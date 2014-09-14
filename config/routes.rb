SunnyHills::Application.routes.draw do
  resources :products

  devise_for :users
  resources :companies

end
