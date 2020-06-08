Rails.application.routes.draw do
  get 'notifications/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :applications do
    resources :applications_documents, only: [:new, :create]
  end
  resources :universities_programs do
    resources :applications, only: [:new, :create]
  end

  resources :notifications, only: [:destroy]
end
