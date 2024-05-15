Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
  resources :pokemon, only: [:index]

  namespace :api do 
    namespace :v1 do 
      resources :pokemon, only: :index
    end
  end

  get "/teams", to: "teams#index"
  get "/teams/new", to: "teams#new", as: "new_team"
  post "/teams", to: "teams#create"

  get '/teams/:id', to: "teams#show"
  get 'teams/:id/edit', to: 'teams#edit', as: 'edit_team'
  patch 'teams/:id', to: 'teams#update', as: 'team'
  put 'teams/:id', to: 'teams#update'
  delete 'teams/:id', to: 'teams#destroy'

  post 'pokemon/add_to_team', to: 'pokemon#add_to_team', as: 'add_pokemon_to_team'

end
