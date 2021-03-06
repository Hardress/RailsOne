Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :users
  resources :products, :invoices, :orders, :users # 5.1 added ", :invoices, :orders, :users"
  resources :users, except: [:index]
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get 'simple_pages/landing_page'
  post 'simple_pages/thank_you'
  post 'payments/create'
  root 'simple_pages#landing_page'
  mount ActionCable.server => '/cable'


  resources :products do # 5.8 added
    resources :comments
  end

  resources :products do
     resources :payments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

