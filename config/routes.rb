Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#begin orders ---------------------------------------------------
  get 'orders', to: 'orders#index'
  get 'orders/new', to: 'orders#new', as: :new

  get 'orders/:id', to: 'orders#show', as: :order

  post 'orders', to: 'orders#create'

  get 'orders/:id/edit', to: 'orders#edit', as: :edit_order
  patch 'orders/:id', to: 'orders#update'

  #delete
  delete 'orders/:id', to: 'orders#destroy'

#end orders ----------------------------------------------------

end
