class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:query]
    if @question == "I'm going to work right now!"
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = 'Silly question. Get dressed and go to work!'
    else
      @answer = "I don't care. Get dressed and go to work!"
    end
  end
end
