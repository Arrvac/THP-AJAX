Rails.application.routes.draw do
  get 'page3/index'
  get 'page2/index'
  get 'page1/index'
  root 'page1#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
