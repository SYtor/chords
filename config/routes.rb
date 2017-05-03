Rails.application.routes.draw do
  get 'welcome/index'
  resources :chords, :tags
  namespace :api do
    resources :chords, :tags
  end
  
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  
  root 'welcome#index'
end
