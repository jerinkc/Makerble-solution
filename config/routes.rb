Rails.application.routes.draw do
  resources :patients
  devise_for :users

  root 'patients#index'
end
