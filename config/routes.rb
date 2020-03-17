Rails.application.routes.draw do
  get 'about/index'
  devise_for :users
  resources :cooperations, except: :edit
  resources :pages, except: :new
  resources :articles
  resources :projects
  root 'about#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
