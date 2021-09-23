Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'services', to: 'pages#services'
  get 'tutorials', to: 'pages#tutorials'
  get 'tec_show', to: 'pages#tec_show'
  resources :orders
  resources :appointments
end
