class ProjectsController < ApplicationController

  def index
  end
  
  def new
    session[:key] = Key.generate
  end

end
