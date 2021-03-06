Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #GET /about
  get "about", to: "about#index", as: :about

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get "search", to: "search#show"

  get "add", to: "addevent#new"
  post "add", to: "addevent#create"

  get "close", to: "closeevent#index"
  post "close", to: "closeevent#route"
  get "close/:event_name", to: "closeevent#show", as:"get_close_event"
  post "close:event_name", to: "closeevent#submit", as: "submit"


  get "events/:event_name/", to: "events#show", as: "get_event"
  post "events/:event_name/", to: "events#predict", as: "predict"
  patch "events/:event_name/prediction", to: "events#update_prediction", as: "update_prediction"
  patch "events/:event_name", to: "events#update_status", as: "update_status"
  post "events", to: "events#route"
  root to: "events#index"

end
