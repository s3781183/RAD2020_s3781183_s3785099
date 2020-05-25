Rails.application.routes.draw do

  root 'static_pages#home'

  get 'sessions/new'

  
  resources :microposts do
    resources :comments
  end
  
  get 'users/new'
  resources :users do 
    get 'edit/editPassword', :to => 'users#editPassword'
    get 'edit/editVerification', :to => 'users#editVerification'
    get 'edit/editAvatar', :to => 'users#editAvatar'
    get 'myprofile/myComments', :to => 'users#allUserComment'
    get 'myprofile/commentToMe', :to => 'users#commentToUser'
  end
  get'/login' , to:'sessions#new'
  post'/login', to:'sessions#create'
  delete'/logout',to:'sessions#destroy'
  get'/signup' , to:'users#new'
  get'/profile' , to:'users#show'
  get'/edit' , to:'users#edit'
 
  get 'edit/editPassword', :to => 'users#editPassword'


  get '/micropost', to: 'microposts#new'
  get '/topic', to: 'static_pages#topic'
end
