class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  	# def after_sign_in_path_for(user)
       # GET blogs#index	
   	# end

  protected
  def after_sign_in_path_for(resource)
    blogs_path
  end
  def after_sign_up_path_for(resource)
    blogs_path
  end
  def after_sign_out_path_for(resource)
   new_user_session_path 
  end

  # def after_sign_out_path_for(resource_or_scope)
    # Rails.root.join('sessions','create') 
    # Rails.root  
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
  end
end
