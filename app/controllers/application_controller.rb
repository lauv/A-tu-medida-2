class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if resource.is_a? User
      if resource.client?
      	request.env['omniauth.origin'] || stored_location_for(resource) || root_path
      elsif resource.designer?
      	request.env['omniauth.origin'] || stored_location_for(resource) || works_index_path
      else
      	request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    	end
    else
      request.env['omniauth.origin'] || stored_location_for(resource) || admin_dashboard_path
    end
  end
end
