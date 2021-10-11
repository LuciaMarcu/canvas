Rails.application.routes.draw do
 
  resources :prints do
    resources :comments
  end
  
  devise_for :users, controllers: { registrations: 'registrations'}
  root 'prints#index'
end
