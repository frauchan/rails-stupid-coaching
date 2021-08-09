class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    @search = params[:question]
    @answers = if @search.downcase == 'i am going to work right now!'
                 @answers[0]
               elsif @search.include? '?'
                 @answers[1]
               else
                 @answers[2]
               end
  end
end
