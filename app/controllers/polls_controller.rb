class PollsController < ApplicationController

  def index
    @polls = Poll.all
  end

  def show
    @poll = Poll.find(params[:id])
  end

  def new
    @poll = Poll.new

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
