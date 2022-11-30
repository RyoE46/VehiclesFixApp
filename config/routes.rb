Rails.application.routes.draw do
  devise_for :users
  root to: "vehicles#index"
  resources :vehicles
end
