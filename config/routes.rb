Rails.application.routes.draw do
  devise_for :users
  resources :authentication, only: [:index]
  resources :dashboard, only: [:index]#, :show]
  resources :assesment, only: [:create]#, :edit, :update]

  root to: "authentication#index"
end
