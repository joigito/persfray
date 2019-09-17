Rails.application.routes.draw do
  resources :movimientos
  root to: 'personals#index'
  resources :personals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
