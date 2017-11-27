Rails.application.routes.draw do
  devise_for :designers
  devise_for :retailers
  # ALWAYS PUT ROOT ROUTE AT THE BEGINNING OF THE FILE
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"

  # STATIC PAGES
  get '/buyers', to: 'pages#buyers'
  get '/designers/info', to: 'pages#designers', as: 'designers_info'
  get '/faq', to: 'pages#faq'
  get '/live_chat', to: 'pages#live_chat'
  get '/about', to: 'pages#about'

  # devise_for :retailers

  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'

  resources :collections, only: [:show]

  resources :categories, only: [ :show ]

  resources :designers, only: [:show, :index, :dhome] do
    resources :looks, only: [:show]
    resources :products, only: [:show]
  end

  resource :retailer, only: [:show, :edit, :update, :index]
  resource :store_collection, only: [:show, :new, :create, :edit, :update] do
    resources :store_products, only: [:create, :destroy]
  end
end


