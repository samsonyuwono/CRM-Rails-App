class User::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]
 #  def google_oauth2
 #   user = ::User.from_omniauth(oauth_response)
 #
 #   if user.persisted?
 #     flash[:notice] = I18n.t("devise.omniauth_callbacks.success", kind: provider)
 #     sign_in_and_redirect user, event: :authentication
 #   else
 #     session["devise.google_data"] = oauth_response.except(:extra)
 #     params[:error] = :account_not_found
 #     do_failure_things
 #   end
 # end
  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
