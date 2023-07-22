Rails.application.routes.draw do
  devise_for :users
  
  root to: 'home#top'
  get 'home/about',to: 'home#about',as: 'about'
  
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
  
  
end
