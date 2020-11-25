Rails.application.routes.draw do
  root 'homes#top'
  resources :users, :except => [:destroy]
end
