Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :planets, only: [:index, :new, :create, :edit, :update, :destroy, :show] do
    resources :rentings, only: [:new, :create]
  end
  resources :rentings, only: [:index, :show] do
    collection do
      get :my_offers
    end
    member do
      patch :accept
      patch :decline
    end
  end
end
