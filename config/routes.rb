Rails.application.routes.draw do
 # get 'page/index'
  resources :bookstores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'page#index'
  get 'page/index'  
 
end
