Rails.application.routes.draw do

  get "/my_profile", to: 'profiles#my_profile'
  resources :profiles, only: [:show, :edit, :update]
  resources :reviews, only: [:index]
  resources :users, only: [] do
  resources :reviews, only: [:new, :create]
  end
  resources :games, only: [:new, :create, :index, :show, :destroy]
  get "/game/:id/payment", to: "games#payment", as: "game_payment"
  get "/game/:id/payment/confirmed", to: "games#confirmed", as: "game_payment_confirmed"

  root to: 'games#index'
  devise_for :users
end
