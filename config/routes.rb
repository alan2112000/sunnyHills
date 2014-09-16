SunnyHills::Application.routes.draw do
  resources :products

  devise_for :users
  resources :companies
  root :to => "companies#index"
end
