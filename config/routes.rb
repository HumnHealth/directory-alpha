Rails.application.routes.draw do
  root to: 'landings#index'
  # root to: 'doctors#index'
  get '/carehome', to: "landings#carehome", as: "carehome"
  get '/motherbaby', to: "landings#motherbaby", as: "motherbaby"
  get '/doctordirectory', to: "landings#doctordirectory", as: "doctordirectory"
  resources :doctors
  resources :practices
end
