Rails.application.routes.draw do

  devise_for :users
  resources :cars do
    resources :reservations, only: :create
  end

  resources :reservations, only: :show


  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



  #get "cars", to: "cars#index"

  #get "cars/new", to: "cars#new"

  #post "cars", to: "cars#create"

  #get "cars/:id/edit", to: "cars#edit"

  #no patch

  #delete "cars/:id", to: "cars#destroy"

end
