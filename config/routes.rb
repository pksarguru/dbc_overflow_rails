Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :questions do
    resources :comments, only: [:new, :create]
    resources :answers do
      resources :comments, only: [:new, :create]
    end
  end

  resources :users

  resources :sessions, only: [:new, :create, :destroy]

  root 'questions#index'
end
