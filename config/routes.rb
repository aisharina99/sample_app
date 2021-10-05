Rails.application.routes.draw do
  root "static_pages#home"
  get 'static_pages/help'
  get 'static_pages/contact'
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  resources :users
  resources :account_activations, only: :edit
  resources :password_resets, only: [:new, :create, :edit, :update]
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

end
