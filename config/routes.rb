Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users 
  devise_scope :users do
    resources :users do
      collection do
        get 'reserve', to: 'users#reserve'
        post 'reserve', to: 'users#update'
      end
    end
  end
end
