class CopiesController < ApplicationController

  def create
    key = Copy.make(params)
    redirect_to "/projects/#{key}"
  end

end
