Rails.application.routes.draw do
  resources :frameworks, only: [:index, :show]
  
  root to: 'frameworks#index'
end
