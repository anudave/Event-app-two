Rails.application.routes.draw do


  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  
  get "/eventtypes" => "event_types#index"
  get "/eventtypes/:id" => "event_types#show"
  # get "/eventtypes/new" => "event_type#new"
  # get "/eventtypes/:id/checklist" => "event_types_check_list_items#showchecklist"

  get "/checklistitems" => "checklistitems#index"

  get "/checklistitemusers" => "checklistitemusers#index"

  get "/guestlists" => "guestlists#index"
  get "/guestlists/new" => "guestlists#new"
  post "/guestlists" => "guestlists#create"

  get "/events" => "events#index"
  get "/events/new" => "events#new"
  post "/events" => "events#create"
  get "/events/:id" => "events#show"
  get "/events/:id/edit" => "events#edit"
  patch "/events/:id" => "events#update"
  
  # get "/events/:id/edit" => "events#edit"
  # patch "/events/:id" => "events#update"

  get "/eventtypeschecklistitems" => "event_types_check_list_items#index"


end
