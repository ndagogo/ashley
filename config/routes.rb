Rails.application.routes.draw do
  root 'home#index'
  
  get "about", to: "home#about"

  get "signup", to: "users#new"
  resources :users, except: [:new]
  resources :articles

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  

end
