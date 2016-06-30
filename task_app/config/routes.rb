Rails.application.routes.draw do

  namespace :api, defaults: {format: 'json'}, path: '/' do
    namespace :v1 do
      resources :tasks, except: [:new, :edit]
      resources :users, only: [:create]
      post 'users/via_facebook_token', to: 'users#via_facebook_token', as: :via_facebook_token
      resources :user_tasks, only: [:create]
    end
  end

  # http://api.localhost:3000/v1/tasks
end
