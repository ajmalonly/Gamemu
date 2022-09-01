Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :games do
    resources :bookings, only: [:new, :create, :show]
  end
  resources :bookings, only: [:edit, :index, :update, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
