Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "static_pages#root"

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show] #added a show page// need to add into controller
    resource :session, only: [:create, :destroy, :show]
    resources :addresses, only: [:index, :show, :create, :update, :destroy]
    resources :plants, only: [:index, :show]
    resources :planters, only: [:index, :show]
    resources :accessories, only: [:index, :show]
    resources :carts, only: [:index, :show, :create, :update]
    resources :cart_items, only: [:index, :show, :create, :update, :destroy]
    resources :orders, only: [:index, :show]
    resources :blogs, only: [:index, :show]
    resources :plant_dbs, only: [:index, :show]
    resources :contacts, only: [:create]
  end


end
