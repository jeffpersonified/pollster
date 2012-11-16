class PollsController < ApplicationController

  def index
    @polls = Poll.all
  end

  def show
    @poll = Poll.find(params[:id])
  end

  def new
    @poll = Poll.new
    @question = @poll.questions.build

    # 3.times do 
    #   question = @poll.questions.build
    # end

  end

  def create
    @poll = Poll.new(params[:poll])
    @poll.save
    
    redirect_to polls_path
  end

  def results
    @poll = Poll.find(params[:id])
  end
end


# add button to add questions
# add define question types
# add different answer fields depending on types
# debug why questions can only be answered once
# add admin pages
