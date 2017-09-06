Rails.application.routes.draw do
  namespace :control do
    resources :bays
  end
  namespace :control do
    resources :substations
  end
  devise_for :users

   namespace :medition do
    resources :calibrations
    resources :measurement_equipments
  end

  namespace :equipment do
    resources :reactors
    resources :transformers
    resources :lightning_arresters
    resources :switches
    resources :battery_banks
    resources :blades
  end

  resources :substations
  root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
