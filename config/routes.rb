Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'services', to: 'pages#services'
  get 'test', to: 'pages#test'
  resources :orders

  resources :appointments
end
