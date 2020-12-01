Rails.application.routes.draw do
  root 'homes#top'
  resources :users, :except => [:new]
  resources :books, :only => [:index, :show]
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
