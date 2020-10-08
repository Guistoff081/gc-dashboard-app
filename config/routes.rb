Rails.application.routes.draw do
  resources :vendas
  get 'clientes/index'
  resources :clientes
  get 'produtos/index'
  resources :produtos
  root 'admin#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
