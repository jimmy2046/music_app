Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  root 'static_pages#home'
    
# home_path
  get '/home',     to: 'static_pages#home'

# help_path    
  get '/help',    to: 'static_pages#help'

# about_path    
  get '/about',    to: 'static_pages#about'    

# contact_path
  get '/contact',  to: 'static_pages#contact'    

# signup_path    
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'    

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'    
    
  resources :users    

  resources :account_activations, only: [:edit]       
  resources :password_resets,     only: [:new, :create, :edit, :update]
    
end