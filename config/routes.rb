Rails.application.routes.draw do
  resources :prints
  devise_for :users, controllers: { registrations: 'registrations'}
  root 'prints#index'
end
