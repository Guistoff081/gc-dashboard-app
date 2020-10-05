Rails.application.routes.draw do
  get 'clientes/index'
  resources :clientes
  root 'clientes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
