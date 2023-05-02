Rails.application.routes.draw do
  root "users#index"

  resources :users

end

  # root "informations#index"
  # get "/informations/new", to: "informations#new"
  # get "/informations/:name", to: "informations#show"
  # resources :information
