Rails.application.routes.draw do
  devise_for :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products
  resources :order_items
  resource :cart, only: [:show]
  resource :book, only: [:show]


end
