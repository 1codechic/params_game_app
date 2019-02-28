class Api::PagesController < ApplicationController

  def query_action 
    @name = params['name'].upcase
    if @name.start_with?("A")
      @message = "Hey, your name starts with the first letter of the alphabet."  
    elsif
      @message = "Your name does not begin with the letter A"
    end 
    render 'query_view.json.jbuilder'
  end

end
