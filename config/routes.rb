Rails.application.routes.draw do
 
  get 'users/show'
  resources :prints do
    resources :comments
    member do 
  		put 'like', to: "prints#like"
  		put 'unlike', to: "prints#unlike"
  	end
  end
  
  match '/users/:id', to: 'users#show', via: 'get' 
  devise_for :users, controllers: { registrations: 'registrations'}, :path_prefix => 'd'
  resources :users, :only =>[:show]
  root 'prints#index'
end
