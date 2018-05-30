# frozen_string_literal: true

Rails.application.routes.draw do
  resources :userteams
  resources :teams, except: %i[new edit]
  resources :userteams, except: %i[new edit]
  resources :todos, except: %i[new edit]
  resources :lists, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  patch '/todos/:id' => 'todos#update'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
