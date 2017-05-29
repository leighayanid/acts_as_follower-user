class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  private
   def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :username,:email, :password, :remember_me])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:full_name, :username,:email, :password, :remember_me])
    devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :username,:email, :password, :remember_me])
  end
end
