class ProjectsController < ApplicationController

  def url_for_key
    "/#{@key}"
  end

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
    @key = project.key = params.fetch(:key)
    project.save!
    redirect_to url_for_key, id: project.key, name: params[:name]
  end

end
