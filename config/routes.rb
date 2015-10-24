Rails.application.routes.draw do
  devise_for :users
  resources :authentication, only: [:index]
  resources :sections, only: [:index] do
    collection do
      get :report
    end
    resources :questions, only: [:index]
  end
  resources :answers, only: [:create] do
    collection do
      get :current_graph
    end
  end
  resources :dashboard, only: [:index]
  resources :assesment, only: [:index, :create]

  root to: 'authentication#index'
end
