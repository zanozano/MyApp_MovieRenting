Rails.application.routes.draw do
  resources :arriendos
  resources :clientes do
    collection do
      get 'disponibles', to: 'clientes#disponibles'
    end
  end

  root 'clientes#index'
end
