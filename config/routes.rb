Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :planets, only: [:index, :new, :create, :edit, :update, :destroy, :show] do
<<<<<<< HEAD
    resources :rentings, only: [:create]
  end

=======
    resources :rentings, only: [:index, :show, :new, :create]
  end
  resources :rentings, only: [:show]
>>>>>>> master
end
