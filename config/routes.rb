Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :game do
    resources :booking, only: [:create, :show]
  end
  resources :booking, only: [:edit, :index, :delete]
  # Defines the root path route ("/")
  # root "articles#index"
end
