Rails.application.routes.draw do

  devise_for :users
  resources :cars
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #to be checked

  #get "cars", to: "cars#index"

  #get "cars/new", to: "cars#new"

  #post "cars", to: "cars#create"

  #get "cars/:id/edit", to: "cars#edit"

  #no patch

  #delete "cars/:id", to: "cars#destroy"

end
