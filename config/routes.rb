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
  get'/profile' , to:'users#show'

  get '/micropost', to: 'microposts#new'
  get '/topic/:topic', to: 'microposts#topic',as: 'topic'
end
