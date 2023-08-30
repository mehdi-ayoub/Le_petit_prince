Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :planets, only: [:index, :new, :create, :edit, :update, :destroy, :show] do
    resources :rentings, only: [:index, :show, :new, :create]
  end
  resources :rentings, only: [:show]
end
