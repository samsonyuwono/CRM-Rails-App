Rails.application.routes.draw do
  devise_for :users
  resources :leads
  resources :companies

  root 'static#home', as: 'home'

  authenticated :user do
    root to: 'companies#index', as: :authenticated_root
  end

  post 'companies' => 'companies#create'


end
