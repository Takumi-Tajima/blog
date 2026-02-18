Rails.application.routes.draw do
  root 'articles#index'

  namespace :admins do
    root 'articles#index'
    resources :articles, only: %i[index show new edit create update destroy]
  end

  resources :articles, only: %i[index show]

  get 'up' => 'rails/health#show', as: :rails_health_check
end
