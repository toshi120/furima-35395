Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :user, only: [:new, :create, :destroy]

end
