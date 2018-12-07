Rails.application.routes.draw do
  root "posts#index"

  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :posts do
    resources :comments, except: [:show, :index]
  end
  resources :users, only: [:show, :index]
end
