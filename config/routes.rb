Rails.application.routes.draw do
  root to: 'personals#index'
  resources :inasistencia
  resources :personals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
