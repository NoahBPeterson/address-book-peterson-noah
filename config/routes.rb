Rails.application.routes.draw do
  resources :person
  resources :emails
  resources :addresses
  resources :phonenumbers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
