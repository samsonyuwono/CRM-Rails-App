Rails.application.routes.draw do
  devise_for :users, controllers: {:omniauth_callbacks => "users/omniauth_callbacks"}
  resources :leads
  resources :companies

  root 'static#home', as: 'home'

  post 'companies' => 'companies#create'
end
