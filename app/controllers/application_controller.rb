class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  
  def store_location
    disable_pattern = /\/users/
    session[:previous_url] = request.fullpath unless request.fullpath =~ disable_pattern
  end

  def after_sign_in_path_for(resource)
    session[:previous_url] || root_path
  end

  def after_sign_out_path_for(resource)
    after_sign_in_path_for(resource)
  end
end
