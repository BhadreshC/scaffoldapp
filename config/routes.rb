Rails.application.routes.draw do
 
resources :sessions, only: [:new, :create, :destroy]  
	 get 'signup', to: 'users#new', as: 'signup'
	 get 'login', to: 'sessions#new', as: 'login'  
	 get 'logout', to: 'sessions#destroy', as: 'logout' 


 
  resources :users
 # get 'page/index'
  resources :books
resources :authors
resources :authordetails 
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'page#index'
  get 'page/index'  
 
end
