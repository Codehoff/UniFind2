Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :applications do
    resources :applications_documents, only: [:new, :create]
  end
  resources :universities_programs do
    resources :applications, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
