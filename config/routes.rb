Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "site#home"

  resources :projects, only: [:index, :show, :new, :create] do
    resources :time_entries, except: [:show]
  end
  # get "/projects", to: "projects#index"

  # post "/projects", to: "projects#create"

  # get "/projects/new", to: "projects#new"

  # get "/projects/:id", to: "projects#show"




  # get "/projects/:project_id/time_entries", to: "time_entries#index"

  # get "/projects/:project_id/time_entries/new", to: "time_entries#new"

  # post "/projects/:project_id/time_entries", to: "time_entries#create", as: :project_time_entries

  # get "/projects/:project_id/time_entries/:id/edit", to: "time_entries#edit" 
  # #for edit we will see the form with the stuff in order to edit
  # #but then we need to actually change the form after it is edited so we need a update route modify
  # #patch is to update
  # patch "/projects/:project_id/time_entries/:id", to: "time_entries#update", as: "project_time_entry"

  # delete "/projects/:project_id/time_entries/:id", to: "time_entries#destroy"
end
