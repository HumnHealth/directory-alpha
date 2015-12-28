Rails.application.routes.draw do
  root to: 'landings#index'
  # root to: 'doctors#index'
  resources :doctors
  resources :practices
end
