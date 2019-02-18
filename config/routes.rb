Rails.application.routes.draw do
  resources :reviews, only: [:index]

  resources :users, only: [] do
    resources :reviews, only: :create
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
