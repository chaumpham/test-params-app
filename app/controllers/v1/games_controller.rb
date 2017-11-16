class V1::GamesController < ApplicationController
  def query_games_method
    input_name = params["name"]
    if input_name[0] == "a"
      render json: {
        name_massage: "Hey #{input_name}, your name starts with the first letter of the alphabet!"
      }
    else 
      render json: {
        name_massage: "Hey #{input_name}! It's nice to meet you."
      }
    end
  end
end
