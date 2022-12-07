Rails.application.routes.draw do
  devise_for :users
  root to: "vehicles#index"
  resources :vehicles do
    resources :vehicle_fixes, only: [:index, :new, :create]
  end
end
