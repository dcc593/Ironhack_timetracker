Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "site#home"

  get "/projects", to: "projects#index"

  post "/projects", to: "projects#create"

  get "/projects/new", to: "projects#new"

  get "/projects/:id", to: "projects#show"


end
