class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :answered_questions
  
  after_filter :save_cookie

  private

  def answered_questions
    @answered_questions ||= if cookies[:answered_questions]
      cookies[:answered_questions].split(";").collect(&:to_i)
    else
      []
    end
  end

  def save_cookie
    # cookies[:answered_questions] << 
    cookies[:answered_questions] = answered_questions.join(";")
    #     # "1;5;7;3"
  end
end
