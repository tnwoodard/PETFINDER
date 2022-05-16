Rails.application.routes.draw do
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
