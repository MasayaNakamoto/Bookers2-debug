Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root 'homes#top'
  get "home/about" => "homes#about"
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
end