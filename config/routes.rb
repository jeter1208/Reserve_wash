Rails.application.routes.draw do

 

  devise_for :users , controllers:
                     { omniauth_callbacks: "users/omniauth_callbacks" }
  devise_scope :users do
  end
  namespace :admin, path: 'asigaiboho' do
    resources :reserves 
    resources :users
  end

    resources :reserves 
    root 'welcome#index'
    resources :users
end