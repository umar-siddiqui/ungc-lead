Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}
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
      get :report
    end
  end

  namespace :admin do
    get '/', to: 'panel#index'
  end

  resources :dashboard, only: [:index]

  resources :users, only: [:index]

  resources :assesments, only: [:index, :create] do
    collection do
      get :all_assesments
    end
  end

  resources :companies, only: [] do
    collection do
      get :current_user_company
    end
  end
  root to: 'dashboard#index'
end
