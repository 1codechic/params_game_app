Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/query_url" => "pages#query_action"
    get "/game_url" => "pages#game_action"
    get "/game_segment_route/:user_guess" => "pages#game_segment"
    #body_param
    post "/guess_number" => "pages#body_params_action"
  end
end
