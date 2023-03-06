Rails.application.routes.draw do
  root 'sessions#login'

  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#login'
  get '/createaccount', to: 'sessions#new'
  post '/createaccount', to: 'sessions#new'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
  
  resources :person
  resources :emails
  resources :addresses
  resources :phonenumbers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
