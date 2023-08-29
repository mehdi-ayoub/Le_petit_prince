Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :planets, only: [:index, :new, :create, :destroy]
end
