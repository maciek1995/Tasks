Rails.application.routes.draw do
  root to: "tasks#index"
  resources :tasks

  devise_for :users

  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
      resources :tasks
    end
  end
end
