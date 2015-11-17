Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'confirmations' }
  as :user do
      patch '/user/confirmation' => 'confirmations#update', :via => :patch, :as => :update_user_confirmation
  end

  resources :authentication, only: [:index]

  resources :sections, only: [:index] do
    collection do
      get :report
    end
    resources :questions, only: [:index]
  end

  resources :questions, only: [] do
    collection do
      post :update_all
    end
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

  resources :users, only: [:index, :create]

  scope :admin do
    resources :users, only: [:create]
  end

  resources :assesments, only: [:index, :create] do
    collection do
      get :all_assesments
    end
  end

  # resources :confirmations, only: [:show, :update]

  resources :companies do
    collection do
      get :current_user_company
    end
  end
  root to: 'dashboard#index'
end
