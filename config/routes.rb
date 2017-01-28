Rails.application.routes.draw do
  devise_for :users
  root to: "products#index"
  resources :products, only: [:index, :show]
  resources :users, only: [:show]
  namespace :admin do
    root to: "dashboards#show"
    resources :products, only: [:index, :show, :new, :edit, :create, :destroy]
  end
end
