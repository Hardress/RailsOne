Rails.application.routes.draw do
  resources :users
  resources :products, :invoices, :orders, :users # 5.1 added ", :invoices, :orders, :users"
  resources :users, except: [:index]
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get 'simple_pages/landing_page'
  post 'simple_pages/thank_you'
  root 'simple_pages#index'

  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

