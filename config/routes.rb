Rails.application.routes.draw do
  resources :buses
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :user do
    authenticated :user do
      root 'buses#index', as: :authenticated_root
    end
    unauthenticated :user do
      root 'users/sessions#new', as: :unauthenticated_root
    end
  end
end
