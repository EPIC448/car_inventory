Rails.application.routes.draw do
  resources :dealerships do
    resources :inventories
  end
  namespace :dealership do
    resources :inventories
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: "dealerships#index"
  # root to: "home#index"  // suggested by devise
end
