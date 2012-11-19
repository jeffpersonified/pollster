class AnswersController < ApplicationController

  def create
    question = Question.find(params[:answer].delete(:question_id))
    unless answered_questions.include?(question.id)
      @answer = question.answers.new(params[:answer])
      if @answer.save
        answered_questions << @answer.question_id
      else
        flash[:error] = @answer.errors.to_a.join(', ')
      end
    end
    redirect_to poll_path(question.poll)
  end
end
