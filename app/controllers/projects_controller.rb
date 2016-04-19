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
    @name = params[:name]
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
  end

  def create
    project = Project.new
    @key = project.key = params.fetch(:key)
    project.save!
    redirect_to url_for_key(name: params.fetch(:name))
  end

end
