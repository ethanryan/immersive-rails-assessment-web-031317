Rails.application.routes.draw do
#  resources :appearances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  resources :appearances, only: [:index]
  resources :episodes, only: [:index]


  get "/guests", to: "guests#index"
  get "/guests/new", to: "guests#new", as: "new_guest"
  post "/guests", to: "guests#create"
  get "/guests/:id", to: "guests#show", as: "guest"
  get "/guests/:id/edit", to: "guests#edit", as: "edit_guest"
  patch "/guests/:id", to: "guests#update"
  delete "/guests/:id", to: "guests#destroy", as: "delete"

  get "/appearances", to: "appearances#index"
  get "/appearances/new", to: "appearances#new", as: "new_appearance"
  post "/appearances", to: "appearances#create"
  get "/appearances/:id", to: "appearances#show", as: "appearance"
  get "/appearances/:id/edit", to: "appearances#edit", as: "edit_appearance"
  patch "/appearances/:id", to: "appearances#update"
  delete "/appearances/:id", to: "appearances#destroy", as: "delete_appearance"

  get "/sessions/new", to: "sessions#new", as: "login"
  post "/sessions", to: "sessions#create", as: "sessions"
  #get "/sessions/show", to: "sessions#show", as: "hello" #this one can be deleted
  delete "/logout", to: "sessions#destroy", as: "logout"
end
