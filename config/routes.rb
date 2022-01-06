Rails.application.routes.draw do
  resources :beerwines
  resources :drinks
  resources :appetizers
  resources :entrees
  resources :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
