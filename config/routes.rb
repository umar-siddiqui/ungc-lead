Rails.application.routes.draw do
  devise_for :users
  resources :authentication, only: [:index]
  resources :sections, only: [:index] do
    resources :questions, only: [:index]
  end
  resources :answers, only: [:create]
  resources :dashboard, only: [:index]#, :show]
  resources :assesment, only: [:index, :create]#, :edit, :update]

  root to: "authentication#index"
end
