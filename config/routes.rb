Rails.application.routes.draw do
  root 'static_pages#home'    
  get '/home',     to: 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',    to: 'static_pages#about'    
  get '/contact',  to: 'static_pages#contact'    
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'    
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'    
  
  resources :users do
    member do
      get :following, :followers
    end
  end    
  resources :microposts,          only: [:create, :destroy]    
  resources :relationships,       only: [:create, :destroy]

  resources :articles do
    resources :comments
  end
    
#  get '/newhome4',  to: 'static_pages#newhome4'
  get '/tweet', to: 'static_pages#tweet'
    
end
