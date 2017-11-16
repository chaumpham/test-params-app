Rails.application.routes.draw do
  namespace :v1 do 
    get "/query_games_url" => "games#query_games_method"
  end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
