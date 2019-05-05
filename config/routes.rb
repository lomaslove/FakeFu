Rails.application.routes.draw do
  devise_for :users
  get 'pages/about'
  get 'pages/contact'
  get 'seller'=> "listings#seller"
  resources :listings
  root 'listings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
