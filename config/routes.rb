Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actors" => "actors#actors_page"

  namespace :api do 
    get "/movies" => "movies#movies_page"
  end
end
