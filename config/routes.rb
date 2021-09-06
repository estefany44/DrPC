Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'services', to: 'pages#services'
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
  get 'appointments', to: 'appointments#index'
  get 'appointments/new', to: 'appointments#new', as: :new

  get 'appointments/:id', to: 'appointments#show', as: :appointment

  post 'appointments', to: 'appointments#create'

  get 'appointments/:id/edit', to: 'appointments#edit', as: :edit_appointment
  patch 'appointments/:id', to: 'appointments#update'

  #delete
  delete 'appointments/:id', to: 'appointments#destroy'

  resources :appointments
end
