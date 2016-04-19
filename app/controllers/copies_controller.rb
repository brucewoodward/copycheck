class CopiesController < ApplicationController

  def create
    @key = Copy.make(params)
    redirect_to url_for_key
  end

end
