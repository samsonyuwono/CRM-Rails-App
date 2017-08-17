class RegistrationsController < Devise::RegistrationsController

  def sign_up_params
    devise_parameter_sanitizer.sanitize(:sign_up)
  end
  
  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end
end
