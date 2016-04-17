class CopiesController < ApplicationController

  def url_for_key
    "/#{@key}"
  end

  def create
    @key = Copy.make(params)
    redirect_to url_for_key
  end

end
