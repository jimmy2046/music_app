Rails.application.routes.draw do
  get 'users/new'

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
        
end