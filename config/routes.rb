Rails.application.routes.draw do
<<<<<<< HEAD
  root 'static_pages#home'
=======
  root "static_pages#home"
>>>>>>> a15a9183682b33e7b4dd7ad86995c508952d736f
  get 'static_pages/help'

  get "/signup", to: "users#new"
  resources :users
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
