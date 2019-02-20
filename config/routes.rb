Rails.application.routes.draw do
  get "/payment", to: "pages#payment"
  resources :profiles, only: [:show, :edit, :update]
  resources :reviews, only: [:index]
  resources :users, only: [] do
  resources :reviews, only: [:new, :create]
  end
  resources :games, only: [:new, :create, :index, :show, :destroy]
  root to: 'games#index'
  devise_for :users
end
