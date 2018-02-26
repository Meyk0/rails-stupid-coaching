class QuestionsController < ApplicationController
  def answer
    @question = params[:question]
    @answer = coach_answer

  end

  def ask
  end

def coach_answer
  if @question.downcase == "i am going to work"
    "Great!"
  elsif @question.end_with?("?")
    "Silly question, get dressed and go to work!"
  else
    "I don't care, get dressed and go to work!"
  end
end

end
