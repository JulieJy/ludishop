Rails.application.routes.draw do
  get 'games/new'
  get 'games/create'
  get 'games/index'
  get 'games/show'
  get 'games/destroy'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
