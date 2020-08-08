# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'posts#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users, only: [:index, :new, :create]
  
  resources :posts, only: [:index, :show, :new, :create] do
    resources :responses, only: [:create]
    resource :post_category_relationships
    get :category
  end

  resources :categories
end