# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  resources :home, only: [:index]
  resources :productions
  get 'home/index'
  get '/productions/new', to: 'productions#new'
end
