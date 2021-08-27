Rails.application.routes.draw do
  devise_for :usuarios, :controllers => { registrations: 'registrations' }
  
  root to: 'home#index'
  
  resources :clases
  resources :reservas
end
