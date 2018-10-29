Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get 'dresses', to: 'dresses#index'
  # get 'dresses/:id', to: 'dresses#show'
  # get 'dresses/new', to: 'dresses#new'
  # post 'dresses', to: 'dresses#create'
  # get 'dresses/:id/edit', to: 'dresses#edit'
  # patch 'dresses/:id', to 'dresses#update'
  # delete 'dress/:id', to: 'dresses#destroy'
  #
  # get 'users/:id/dresses', to: 'users#dresses'
  # post 'dresses/:id/rentals', to: 'rentals#create'

end

# or
# Rails.application.routes.draw do
# resources :users do
#   member do
#     get 'dresses'
#   end
#
# resources :dresses do
#   resources :rental, only: [:create]
# end
# end
