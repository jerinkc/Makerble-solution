Rails.application.routes.draw do
  devise_for :users

  resources :patients do
    get :registration_progress, on: :collection
  end

  root 'patients#index'
end
