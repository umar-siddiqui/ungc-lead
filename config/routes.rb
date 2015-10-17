Rails.application.routes.draw do
  devise_for :users
  resources :authentication, only: [:index]
  resources :sections, only: [:index]

  root to: "authentication#index"
end
