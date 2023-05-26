Rails.application.routes.draw do
  get 'peliculas/show'
  resources :arriendos
  resources :peliculas, only: [:show]
  resources :clientes do
    collection do
      get 'disponibles', to: 'clientes#disponibles'
    end
  end

  root 'clientes#index'
end
