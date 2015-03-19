class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

    before_action :configure_devise_permitted_parameters, if: :devise_controller?
 

  protected
    def after_sign_in_path_for(resource)
    user_path(resource)
    end


  def configure_devise_permitted_parameters
    registration_params = [ :email, :password, :password_confirmation, :full_name, :address, :zip, :longitude, :latitude, :visit, :housesit]

    if params[:action] == 'update'
      devise_parameter_sanitizer.for(:account_update) { 
        |u| u.permit(registration_params << :current_password)
      }
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) { 
        |u| u.permit(registration_params) 
      }
    end
  end

    protect_from_forgery with: :exception
end