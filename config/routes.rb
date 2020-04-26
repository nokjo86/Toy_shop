Rails.application.routes.draw do
  root to: 'toys#index'
  resources :toys


  get 'users', to: 'users#index'
  post 'users', to: 'users#create'
  get 'users/new', to: 'users#new', as: 'new_user'
  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  get 'users/:id', to: 'users#show', as: 'user'
  put 'users/:id', to: 'users#update'
  patch 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'

  get 'manufacturers', to: 'manufacturers#index'
  post 'manufacturers', to: 'manufacturers#create'
  get 'manufacturers/new', to: 'manufacturers#new', as: 'new_manufacturer'
  get 'manufacturers/:id/edit', to: 'manufacturers#edit', as: 'edit_manufacturer'
  get 'manufacturers/:id', to: 'manufacturers#show', as: 'manufacturer'
  put 'manufacturers/:id', to: 'manufacturers#update'
  patch 'manufacturers/:id', to: 'manufacturers#update'
  delete 'manufacturers/:id', to: 'manufacturers#destroy'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
