Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users do
  end
end
