Rails.application.routes.draw do
  devise_for :users
  resources :leads
  resources :companies

  root 'static#home', as: 'home'

end
