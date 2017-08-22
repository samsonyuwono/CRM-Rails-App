class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || root_path
  end


  # before_filter :configure_permitted_parameters, if: :devise_controller?
  #
  #  protected
  #
  #  def configure_permitted_parameters
  #       devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password) }
  #       devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :current_password) }
  #     end

end
