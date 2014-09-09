SunnyHills::Application.routes.draw do
  devise_for :users
  resources :companies

end
