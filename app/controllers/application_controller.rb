class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def url_for_key(params=nil)
    url = "/#{@key}"
    url += "?#{params.to_param}" if params
    puts "url: #{url} params: #{params}"
    url
  end
end
