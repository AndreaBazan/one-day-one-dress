Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :dresses, only: %i[show] do
    resources :rentals, only: %i[create]
  end
  
  # get 'dresses', to: 'dresses#index'
  # get 'dresses/new', to: 'dresses#new'
  # post 'dresses', to: 'dresses#create'
  # get 'dresses/:id/edit', to: 'dresses#edit'
  # patch 'dresses/:id', to 'dresses#update'
  # delete 'dress/:id', to: 'dresses#destroy'
  #
  # get 'users/:id/dresses', to: 'users#dresses'

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
