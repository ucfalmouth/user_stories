Rails.application.routes.draw do
  devise_for :users
  root 'projects#index'

  resources :departments
  resources :projects do
    resources :user_stories
  end
  resources :user_stories
end
