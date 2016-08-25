Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'user/registrations'
  }

  root 'staticpage#index'

  resources :buckets do
    resources :lists
  end
end
