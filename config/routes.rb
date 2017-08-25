Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'user/registrations',
    omniauth_callbacks: 'user/omniauth_callbacks'}

  resources :companies do
    resources :leads, only: [:index, :new, :create, :show, :edit]
  end
  resources :leads

  root 'static#home', as: 'home'

end
