Rails.application.routes.draw do
  resources :subscriptions
  resources :profiles
resources :nuggets
resources :users
resources :user_sessions, only: [ :new, :create, :destroy ]

get 'login'  => 'user_sessions#new'
get 'logout' => 'user_sessions#destroy'

root to: 'nuggets#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
