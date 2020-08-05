# frozen_string_literal: true

Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  resources :users
  resources :posts
end