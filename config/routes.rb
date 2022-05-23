Rails.application.routes.draw do
  get 'meetups/index'
  get 'meetups/new'
  get 'meetups/create'
  get 'meetups/show'
  get 'pets/index'
  get 'pets/new'
  get 'pets/create'
  get 'pets/show'
  get 'pets/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pets
  resources :users do
    resources :meetups
  end

  get 'custodians/:id', to: 'users#custodians', as: 'custodians'
  get 'owners/:id', to: 'users#owners', as: 'owners'
  get 'profile', to: 'users#profile', as: 'profile'
  get 'meetups', to: 'users#meetups', as: 'meetups'
end
