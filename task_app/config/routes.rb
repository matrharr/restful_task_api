Rails.application.routes.draw do

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      match 'auth/failure', to: redirect('/'), via: [:get]
      match 'auth/:provider/callback', to: 'users#create', via: [:post]
      resources :tasks, except: [:new, :edit]
      resources :users, only: [:create]
      resources :user_tasks, only: [:create]
    end
  end
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get]

end
