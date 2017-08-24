Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'user/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'}

  resources :companies
  resources :leads, only: %i[index create new show edit]

  root 'static#home', as: 'home'

  post 'companies' => 'companies#create'
end
