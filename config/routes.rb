Rails.application.routes.draw do

  resources :pesquisas
  get 'welcome/index'
  root 'welcome#index'

  resources :contacts
end

