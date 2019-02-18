Rails.application.routes.draw do
  resources :games, only: [:new, :create, :index, :show, :destroy]
  root to: 'games#index'
  devise_for :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
