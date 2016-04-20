class CopiesController < ApplicationController

  def create
    @key = params.fetch(:project_id)
    if params[:name].empty?
      flash[:projects__flash_notice] = "Your Name is Missing. Try Again."
      redirect_to url_for_key(copy: params[:copy])
    elsif params[:copy].empty?
      flash[:projects__flash_notice] = "Blank copy is no good. Try Again."
      redirect_to url_for_key(name: params[:name])
    else
      cookies[:name] = params[:name]
      Copy.make(params)
      redirect_to url_for_key
    end
  end

end
