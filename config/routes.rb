Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'confirmations', recoverable: 'recoverable' }
  as :user do
      patch '/user/confirmation' => 'confirmations#update', :via => :patch, :as => :update_user_confirmation
  end

  resources :authentication, only: [:index]

  resources :sections, only: [:index, :show] do
    collection do
      get :report
      post :report_pdf
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
      get :show_all
    end
  end

  namespace :admin do
    get '/', to: 'panel#index'
  end

  resources :dashboard, only: [:index]

  resources :reports, only: [:index, :create, :update] do
    collection do
      put :update_report
    end
  end

  resources :users, only: [:index, :create]

  scope :admin do
    resources :users, only: [:create, :show] do
      collection do
        post :generate_new_password_email
      end
    end
  end

  resources :assesments, only: [:index, :create] do
    collection do
      get :all_assesments
    end
  end

  resources :companies do
    collection do
      get :current_user_company
    end
  end
  root to: 'dashboard#index'
end
