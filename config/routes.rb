Rails.application.routes.draw do
  devise_for :users

  root 'dresses#home'

  get '/home', to: 'dresses#home'
  resources :users, only: %i[show] do
    resources :dresses, only: %i[index create edit update]
  end

  resources :dresses, except: %i[ destroy] do
    resources :rentals, only: %i[create]
  end
  resources :rentals, only: %i[show]
  resources :dresses, only: %i[filter]

end
