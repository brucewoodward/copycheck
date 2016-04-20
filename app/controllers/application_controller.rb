class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def url_for_key(key, params=nil)
    url = "/#{key}"
    url += "?#{params.to_param}" if params
    url
  end

  def no_such_url
    flash[:projects__flash_notice] = "Where are you going? #{response.original_fullpath}"
    redirect_to "/"
  end

end
