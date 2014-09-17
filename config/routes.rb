SunnyHills::Application.routes.draw do


  get "payment_methods/index"
  get "payment_methods/new"
  get "payment_methods/create"
  get "payment_methods/update"
  get "payment_methods/destroy"
  resources :products
  devise_for :users
  resources :companies do
    resources :orders
  end

  resources :invoices
  resources :discounts
  resources :payment_methods

  root :to => "companies#index"
end
