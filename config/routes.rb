Rails.application.routes.draw do
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

  get '/username/:username' => 'users#username'

  # get '/stories' => 'stories#index'

  get '/thingtodo' => 'stories#thingtodo'
  # resources :users, :path_prefix => ':authentication_token/users/:story_id'  do
  #   resources :stories
  # end
  resources :stories, defaults: { format: :json }
  resources :plot_devices, defaults: { format: :json }
  resources :user_inputs, defaults: { format: :json }

  put '/plot_devices' => 'plot_devices#update'

  # resources :users, defaults: { format: :json } do
  #   resources :stories
  # end
end
