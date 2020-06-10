Rails.application.routes.draw do
  get 'racipe/new'
  get 'material/new'
  get 'customers/show'
  get 'chefs/show'
  devise_for :chefs, controllers: {   registrations: 'chefs/registrations', sessions: 'chefs/sessions' }
  devise_for :customers, controllers: {   registrations: 'customers/registrations', sessions: 'customers/sessions' }
  root to: 'top#index'
  resources :chefs, only: [:show]
  resources :customers, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
