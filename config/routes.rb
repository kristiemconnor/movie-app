Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/actors" => "actors#actors_page"

  namespace :api do 
    get "/movies" => "/movies#index"

    post "/movies" => "/movies#create"

    get "/movies/:id" => "/movies#index"

    # patch "/movies/:id" => "/movies#update"

    # delete "/movies/:id" => "movies#destroy"

    # get "/actor


  end
end
