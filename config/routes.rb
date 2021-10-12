Rails.application.routes.draw do
 
  resources :prints do
    resources :comments
    member do 
  		put 'like', to: "prints#like"
  		put 'unlike', to: "prints#unlike"
  	end
  end
  
  devise_for :users, controllers: { registrations: 'registrations'}
  root 'prints#index'
end
