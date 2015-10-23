Rails.application.routes.draw do
  
  # STATIC PAGES ROUTES
  root 'static_pages#home'
  match '/help', to: 'static_pages#help', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

  # User 
  resources :users
  match '/signup', to: 'users#new', via: 'get'

  # User sign in/out
  resources :sessions, only: [:new, :create, :destroy]
  match '/signin', to: 'sessions#new', via: 'get'
  match 'signout', to: 'sessions#destroy', via: 'delete'
end
