Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  resources :dogs, only: [:index]
  resources :cats, only: [:index]
end
