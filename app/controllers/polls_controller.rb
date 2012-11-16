class PollsController < ApplicationController

  def index
    @polls = Poll.all
  end



  def new
    @poll = Poll.new
    
    @poll.save

    3.times do 
      question = @poll.questions.build
    end
  end



  def create
    @poll = Poll.new(params[:poll])
    @poll.save
    
    redirect_to polls_path
  end

end
