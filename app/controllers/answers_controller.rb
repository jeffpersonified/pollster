require 'set'

class AnswersController < ApplicationController

  def create
    session[:answered_questions] ||= Set.new 

    if !session[:answered_questions].include?(params[:answer][:question_id])
      @answer = Answer.new(params[:answer])
      if @answer.save
        session[:answered_questions] << @answer.question_id
      end
    end

    redirect_to poll_path(@answer.question.poll_id)
  end
end
