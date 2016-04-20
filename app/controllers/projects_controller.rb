require 'ostruct'

class ProjectsController < ApplicationController

  def _massage_copy(copies)
    copies.map do |copy|
      OpenStruct.new(
       name: copy.name, date: copy.date,
       text: copy.text.split("\n")
      )
    end
  end

  def _set_name
    if not params[:name]
      cookies[:name]
    else
      params[:name]
    end
  end

  def show
    @key = params[:id]
    @name = _set_name
    @copies = Project.copy_details_for(@key)
    if not @copies
      flash[:projects__flash_notice] = 'No such key'
      redirect_to '/'
    else
      @default_content = @copies.empty? ? nil : @copies.first.text
      @copies = _massage_copy(@copies)
    end
  end
  
  def new
    @key = Key.generate
    @name = cookies[:name]
  end

  def create
    @name = cookies[:name] = params[:name]
    @key = params.fetch(:key)
    if @name.empty?
      flash[:projects__flash_notice] = "Your Name is Missing. Try Again."
      redirect_to "/"
    else
      project = Project.new
      project.key = @key
      project.save!
      redirect_to url_for_key(@key, name: @name)
    end
  end

end
