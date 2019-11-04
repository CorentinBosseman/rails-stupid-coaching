class QuestionsController < ApplicationController

  ANSWERS = [
    { id: 1, name: "Great!" },
    { id: 2, name: "Silly question, get dressed and go to work!" },
    { id: 3, name: "I don't care, get dressed and go to work!" },
  ]

  def ask
  end

  def answer
    if params[:question] == "I am going to work"
      @answers = "Great!"
    elsif params[:question].include? '?'
      @answers = "Silly question, get dressed and go to work!"
    else
      @answers = "I don't care, get dressed and go to work!"
    end
  end
end
