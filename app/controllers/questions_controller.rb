class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question].downcase == "i am going to work"
      @answer = "Great!"     
    elsif params[:question].downcase == "what time is it?"
      @answer = "It's #{time.now}"
    elsif params[:question].include?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif params[:question].downcase == "hello"
      @answer = "hi there"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
