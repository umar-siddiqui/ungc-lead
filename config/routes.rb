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

  namespace :admin do
    resources :adminpanel, only: [:index]
  end

  resources :dashboard, only: [:index]

  resources :assesments, only: [:index, :create]

  resources :companies, only: [] do
    collection do
      get :current_user_company
    end
  end
  root to: 'authentication#index'
end
