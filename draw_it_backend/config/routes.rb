Rails.application.routes.draw do
  resources :likes
  resources :drawings
  resources :users
  get '/validate_user', to: 'users#validate_user'
  post '/login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
