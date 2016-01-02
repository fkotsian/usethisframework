Rails.application.routes.draw do
  resources :frameworks, only: [:index, :show, :new, :create]
  
  root to: 'frameworks#index'
end
