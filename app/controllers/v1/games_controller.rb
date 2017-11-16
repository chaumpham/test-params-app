class V1::GamesController < ApplicationController
  def query_names_method
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
  def query_games_method
    input_num = params["guess"].to_i
    correct_answer = 36
    if input_num == correct_answer
      render json: {
        result: "YOU WIN!"
      }
    elsif input_num > correct_answer
      render json: {
        result: "TOO HIGH!"
      }
    else 
      render json: {
        result: "TOO LOW!"
      }
    end
  end
  def query_games_method2
    input_num = params["some_input_value"].to_i
    correct_answer = 36
    if input_num == correct_answer
      render json: {
        result: "YOU WIN!"
      }
    elsif input_num > correct_answer
      render json: {
        result: "TOO HIGH!"
      }
    else 
      render json: {
        result: "TOO LOW!"
      }
    end
  end
end
