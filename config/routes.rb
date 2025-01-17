Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :categories
  resources :sessions
  resources :posts

  resources :conversations do
    resources :messages
  end

  root to: "posts#index"
  
end
