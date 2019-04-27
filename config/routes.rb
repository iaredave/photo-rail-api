# frozen_string_literal: true

Rails.application.routes.draw do
  get 'uploads/new'
  get 'uploads/create'
  get 'uploads/index'
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :uploads
  # Custom routes
  root 'uploads#new'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
