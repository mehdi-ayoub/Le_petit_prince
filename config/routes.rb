Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # define the category routes
  resources :categories, only: [:show]
end
