Rails.application.routes.draw do
  devise_for :users
  resources :tasks
  get "pending", to: "tasks#pending"
  
  root "tasks#index"
end
