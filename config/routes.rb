Rails.application.routes.draw do
  get 'welcome/index'
  resources :chords, :artists
  
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  
  get '/search' => 'chords#search'
  
  post '/add_comment' => 'chords#add_comment'
  
  root 'welcome#index'
end
