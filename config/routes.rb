Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "pages#index"

  # resources
  resources :articles
end
