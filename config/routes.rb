Rails.application.routes.draw do
  root 'items#index'
  
  resources :items

  devise_for :users

  resources :carts
  resources :users
  resources :orders
  resources :cart_items, only: [:create, :destroy]


  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
end

  get 'team', to: 'static_pages#team'
  get 'uglycats', to: 'static_pages#uglycats'
  get 'fatcats', to:  'static_pages#fatcats'
  get 'desiguesedcats', to: 'static_pages#desiguesedcats'
  get 'contact', to: 'static_pages#contact'
  get 'help', to: 'static_pages#help'
  get 'privacypolicy', to: 'static_pages#privacypolicy'

  get "up" => "rails/health#show", as: :rails_health_check


end
