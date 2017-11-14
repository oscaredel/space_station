Rails.application.routes.draw do
  # ALWAYS PUT ROOT ROUTE AT THE BEGINNING OF THE FILE
  root to: 'pages#home'

  devise_for :retailers

  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'

  resources :designers, only: [:show, :index] do
      resources :looks, only: [:show]
      resources :products, only: [:show]
  end

  resource :retailer, only: [:show, :edit, :update]
  resource :store_collection, only: [:show, :new, :create, :edit, :update] do
    resources :store_products, only: [:create]
  end
end
