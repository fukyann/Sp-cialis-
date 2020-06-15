Rails.application.routes.draw do
  devise_for :chefs, controllers: {   registrations: 'chefs/registrations', sessions: 'chefs/sessions' }
  devise_for :customers, controllers: {   registrations: 'customers/registrations', sessions: 'customers/sessions' }
  root to: 'top#index'
  resources :chefs, only: [:index]
  resources :customers, only: [:index]
  resources :materials, only: [:new, :create, :show]
  resources :recipes do 
    resources :comments, only: :create
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
