Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users , controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  devise_scope :users do
    resources :user do
      collection do
        get 'reserve', to: 'reserves#reserve'
        post 'reserve', to: 'reserves#create'
      end
    end
  end
end