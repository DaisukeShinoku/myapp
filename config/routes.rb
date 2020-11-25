Rails.application.routes.draw do
  root 'homes#top'
  resources :users, :only => [:index, :show, :edit, :update]
end
