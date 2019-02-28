class Api::PagesController < ApplicationController

  def query_action 
    @name = params[:name].upcase
    if @name.start_with?("A")
      @message = "Hey, your name starts with the first letter of the alphabet."  
    elsif
      @message = "Your name does not begin with the letter A"
    end 
    render 'query_view.json.jbuilder'
  end

  def game_action
    user_input = params[:guess].to_i
    answer = 32
    if user_input > answer
      @message = "hey you guessed too high"
    elsif user_input < answer
      @message = "hey you guessed too low"
    elsif user_input == answer
      @message = "You got it right"
    end
    render 'game.json.jbuilder'
  end

  def game_segment
    user_input = params[:user_guess].to_i
    answer = 32
    if user_input > answer
      @message = "hey you guessed too high"
    elsif user_input < answer
      @message = "hey you guessed too low"
    elsif user_input == answer
      @message = "You guessed right"
    end
    render 'game_segment_view.json.jbuilder'
  end

end
