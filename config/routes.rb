Rails.application.routes.draw do
  # get 'likes/index'
  #
  # get 'likes/create'
  #
  # get 'likes/update'
  #
  # get 'likes/show'
  #
  # get 'likes/destroy'

  get 'index/create'

  get 'index/update'

  get 'index/show'

  get 'index/destroy'

  get 'plot_devices/index'

  get 'plot_devices/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  require 'sidekiq/web'

  mount Sidekiq::Web => '/sidekiq'

  get '/' => 'users#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # get '/authors' => 'users#index'
  get '/username/:username' => 'users#username'
  get '/users/:username' => 'users#username', defaults: { format: :json }

  # get '/stories' => 'stories#index'

  get '/thingtodo' => 'stories#thingtodo'
  # resources :users, :path_prefix => ':authentication_token/users/:story_id'  do
  #   resources :stories
  # end

  resources :users, defaults: { format: :json }
  resources :stories, defaults: { format: :json }
  resources :plot_devices, defaults: { format: :json }
  resources :user_inputs, defaults: { format: :json }

  put '/plot_devices' => 'plot_devices#update'
  put '/user_inputs' => 'user_inputs#update'
  put 'users' => 'users#update'

  # get '/post/:id/likes' => 'likes#index'
  post '/stories/:story_id/likes' => 'likes#create'
  put '/stories/:story_id/likes' => 'likes#update'



  # resources :users, defaults: { format: :json } do
  #   resources :stories
  # end
end
