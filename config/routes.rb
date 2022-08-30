Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :games do
    resources :bookings, only: [:create, :show]
  end
  resources :bookings, only: [:edit, :index, :delete]
  # Defines the root path route ("/")
  # root "articles#index"
end
