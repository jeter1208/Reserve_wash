Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users 
  devise_scope :users do
  end

  resources :reserves do
    collection do
      get 'reserve', to: 'reserves#reserve'
      post 'reserve', to: 'reserves#update'
    end
  end
end
