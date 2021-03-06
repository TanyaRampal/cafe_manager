Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/" => "home#index"

  resources :menu_items
  resources :menu_categories

  resources :cart_items
  resources :carts

  resources :users

  post "/signin" => "sessions#create", as: :sessions
  delete "/signout" => "sessions#destroy", as: :destroy_session

  get "/pending_orders" => "orders#show_pending", as: :pending_orders
  get "/delivered_orders" => "orders#show_delivered", as: :delivered_orders
end
