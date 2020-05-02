Rails.application.routes.draw do
  resources :microposts
  get 'users/new'
  resources :users
end
