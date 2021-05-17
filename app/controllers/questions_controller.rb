class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]


    @answer = if @question.present? == false
                "You haven't answered. Get to work!"
              elsif @question.include? '?'
                'Silly question, get dressed and go to work!'
              elsif @question == 'I am going to work!'
                'Great!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
