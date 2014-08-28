Rails.application.routes.draw do
  resources :scholarships

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
