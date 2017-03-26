class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if resource.client?
    	request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    elsif resource.designer?
    	request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    else
    	request.env['omniauth.origin'] || stored_location_for(resource) || root_path
  	end
  end
end
