Rails.application.routes.draw do

 

  devise_for :users , controllers:
                     { omniauth_callbacks: "users/omniauth_callbacks" }
                     { registrations: "users/registrations" }
  devise_scope :users do
  end
  namespace :admin, path: 'asigaiboho' do
    resources :reserves 
    resources :users
    get 'search', to: 'reserves#search'
  end

    resources :reserves 
    root 'welcome#index'
    resources :users
end