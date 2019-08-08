Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :pets
    end
  end

  get '*path', :to => 'homes#index'
end
