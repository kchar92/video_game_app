Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/games' => 'video_games#index'

    get '/games/:id' => 'video_games#show'

    post '/games' => 'video_games#create'

    patch '/games/:id' => 'video_games#update'

    delete '/games/:id' => 'video_games#destroy'
  end
end
