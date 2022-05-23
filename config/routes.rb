Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pets, only: [:create, :show, :destroy] do
    resources :meetups, only: [:index, :show, :new, :create]
  end
  resources :pets, only: [:index, :new]
  get 'custodians/:id', to: 'users#custodians', as: 'custodians'
  get 'owners/:id', to: 'users#owners', as: 'owners'
  get 'profile', to: 'users#profile', as: 'profile'
  get 'my_meetups', to: 'users#my_meetups', as: 'my_meetups'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
