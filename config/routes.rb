Rails.application.routes.draw do
  get 'welcome/index'
  resources :chords, :tags
  namespace :api do
    resources :chords, :tags
  end
  root 'welcome#index'
end
