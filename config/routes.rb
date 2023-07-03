Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :heroes, only: [:index, :show]
  resources :powers, only: [:index, :show, :update]
  resources :hero_powers, only: [:create]

    # Route for updating a power
    patch '/powers/:id', to: 'powers#update'

    # Route for handling hero not found
    get '/heroes/:id', to: 'heroes#show', as: 'hero'
  
    # Route for handling power not found
    get '/powers/:id', to: 'powers#show', as: 'power'
  
    # Root route
    root to: 'heroes#index'

end
