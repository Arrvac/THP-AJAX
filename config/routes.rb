Rails.application.routes.draw do
  get 'emails/index'
  root "emails#index"
  resources :lists
  resources :emails
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
