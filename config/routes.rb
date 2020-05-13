Rails.application.routes.draw do

  root 'static_pages#home'

  get 'sessions/new'

  resources :microposts
  get 'users/new'
  resources :users
  get'/login' , to:'sessions#new'
  post'/login', to:'sessions#create'
  delete'/logout',to:'sessions#destroy'
  get'/signup' , to:'users#new'
end
