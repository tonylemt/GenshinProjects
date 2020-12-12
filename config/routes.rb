Rails.application.routes.draw do
  devise_for :users
  get "users/sign_out" => "home#index"
  resources :friends
  resources :drop_rates
  get 'home/about'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
