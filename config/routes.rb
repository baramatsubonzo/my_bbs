# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'posts#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  resources :users
  resources :posts
end