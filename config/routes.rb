Rails.application.routes.draw do
 devise_for :users
  root to: "homes#index"
  resources :recipes
  resources :users
  
  
end
