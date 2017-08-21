Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'user/registrations'}
  resources :leads
  resources :companies

  root 'static#home', as: 'home'

end
