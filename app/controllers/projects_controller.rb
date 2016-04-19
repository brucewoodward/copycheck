class ProjectsController < ApplicationController

  def show
    @key = params[:id]
    @name = params[:name]
    @copies = Project.copy_details_for(@key)
    if @copies.empty?
      @default_content = nil
    else
      @default_content = @copies.first.text
    end
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
