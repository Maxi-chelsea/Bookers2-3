Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  root to: 'homes#top'
  get 'homes/about', to: 'homes#about'
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
