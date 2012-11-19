class AnswersController < ApplicationController

  def create
    question = Question.find(params[:answer].delete(:question_id))
    unless answered_questions.include?(question.id)
      @answer = question.answers.new(params[:answer])
      if @answer.save
        answered_questions << @answer.question_id
      # else
      #  render action: "polls/answer_fields" 
      # this is where you will render a new question partial
     
      end
      

    end

    redirect_to poll_path(question.poll)
  end
end
