Rails.application.routes.draw do
  root 'static_pages#home'
  resources :microposts
  get 'users/new'
  resources :users
end
