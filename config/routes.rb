Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pets
  resources :users, only: [:owners]
  resources :users, only: [:custodians]
  resources :messages, only: [:new, :create]
  resources :meetups, only: [:create, :update, :edit]

  delete 'meetups/:id', to: 'meetups#destroy', as: 'delete_meetup'
  get 'custodians/:id', to: 'users#custodians', as: 'custodians'
  get 'owners/:id', to: 'users#owners', as: 'owners'
  get 'my_profile/:id', to: 'users#my_profile', as: 'my_profile'
end
