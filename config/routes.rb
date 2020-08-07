# frozen_string_literal: true

Rails.application.routes.draw do
  get 'categories/index'
  root to: 'posts#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users, only: [:index, :new, :create]
  
  resources :posts, only: [:index, :show, :new, :create] do
    resources :responses, only: [:create]
  end

  resources :categories
end