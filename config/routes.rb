Rails.application.routes.draw do
  devise_for :usuarios
  get 'signup', to: 'usuarios#new', as: 'cadastrar'
  get 'login', to: 'sessions#new', as: 'entrar'
  get 'logout', to: 'sessions#destroy', as: 'sair'  
  resources :sessions, only: [:new, :create, :destroy]
  resources :usuarios
  get 'home/index'
  get 'vendas/index'
  resources :vendas
  get 'clientes/index'
  resources :clientes
  get 'produtos/index'
  resources :produtos
  get 'admin/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
