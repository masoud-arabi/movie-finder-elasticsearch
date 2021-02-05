Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :movies, only: [:show, :index] do 
    get 'search/*query', to: 'movies#index', as: :search, on: :collection
  end

  resource :landing, only: [:show]

  root to: 'landings#show'
end
