Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/contacts" => "contacts#index"
    get "/contacts/:id" => "contacts#show"
    get "/contacts/:id" => "contacts#destroy"
    post "/contacts/" => "contacts#create"
  end
end
