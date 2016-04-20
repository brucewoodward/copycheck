class ProjectsController < ApplicationController

  def show
    @key = params[:id]
    @name = params.fetch(:name, cookies[:name])
    @copies = Project.copy_details_for(@key)
    if not @copies
      flash[:projects__flash_notice] = 'No such key'
      redirect_to '/'
    else
      @default_content = @copies.empty? ? nil : @copies.first.text
    end
  end

  def new
    @key = Key.generate
    @name = cookies[:name]
  end

  def create
    if params[:name].empty?
      flash[:projects__flash_notice] = "Your Name is Missing. Try Again."
      redirect_to "/"
    else
      @name = cookies[:name] = params[:name]
      @key = params.fetch(:key)
      project = Project.new
      project.key = @key
      project.save!
      redirect_to url_for_key(@key, name: @name)
    end
  end

end
