Rails.application.routes.draw do
  devise_for :usuarios, :controllers => { registrations: 'registrations' }
  
  root to: 'home#index'
  
  resources :clases
  resources :reservas

  get '/clases', to: 'clases#index'
  get '/clases/:id', to: 'clases#show'
end
