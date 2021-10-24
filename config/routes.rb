Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users , controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  devise_scope :users do
  end

  resources :reserves do
    collection do
      get 'new', to: 'reserves#new'
      post 'new', to: 'reserves#create'
      get 'index', to: 'reserves#index'
      get 'edit', to: 'reserves#edit'
      post 'edit', to: 'reserves#update'
    end
  end
end