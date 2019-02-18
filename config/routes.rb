Rails.application.routes.draw do
  resources :reviews, only: [:index, :create]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
