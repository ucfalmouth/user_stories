Rails.application.routes.draw do
  devise_for :users
  root 'departments#index'

  resources :departments
  resources :projects
end
