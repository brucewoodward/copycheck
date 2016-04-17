class ProjectsController < ApplicationController

  def show
    @key = params[:id]
    @name = params[:name]
    @copies = Project.copy_details_for(@key)
  end
  
  def new
    @key = Key.generate
  end

  def create
    project = Project.new
    project.key = params.fetch(:key)
    project.save!
    redirect_to action: 'show', id: params[:key], name: params[:name]
  end

end
