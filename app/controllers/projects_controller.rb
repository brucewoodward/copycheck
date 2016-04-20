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

  def show
    @key = params[:id]
    if not params[:name]
      @name = cookies[:name]
    else
      @name = params[:name]
    end
    @copies = Project.copy_details_for(@key)
    @default_content = if @copies.empty?
      nil
    else
      @copies.first.text
    end
    @copies = _massage_copy(@copies)
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
      redirect_to url_for_key(name: params.fetch(:name))
    end
  end

end
