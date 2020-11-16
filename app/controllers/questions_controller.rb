class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]

    if @answer == 'I am going to work!'
      @question = 'Great!'
    elsif @answer.end_with?('?')
      @question = 'Silly question, get dressed and go to work!'
    else
      @question = 'I do not care, get dressed and go to work!'
    end
  end
end
