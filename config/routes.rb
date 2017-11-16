Rails.application.routes.draw do
  namespace :v1 do 
    get "/query_names_url" => "games#query_names_method"
    get "/query_games_url/" => "games#query_games_method"
    get "/query_games_url2/:some_input_value" => "games#query_games_method2"
  end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
