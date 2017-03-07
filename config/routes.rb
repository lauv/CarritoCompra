Rails.application.routes.draw do
  get 'orders/index'

  resources :products
  resources :categories
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
