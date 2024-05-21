Rails.application.routes.draw do
  devise_for :users

  resources :patients do
    get :registration_progress, on: :collection
  end
  resource :receptionist, only: %w[edit update], controller: :receptionist

  root 'patients#index'
end
