DirectoryAlpha::Application.routes.draw do
  root to: 'doctors#index'
  resources :doctors
  resources :practices
end
