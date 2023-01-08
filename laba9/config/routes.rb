Rails.application.routes.draw do
  root 'mersen#input'
  get 'mersen/input', to: 'mersen#input'
  post 'mersen/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  end