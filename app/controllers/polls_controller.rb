class PollsController < ApplicationController

  def index
    @polls = Poll.all
  end

  def show
    @poll = Poll.find(params[:id])
  end

  def update
    @poll = Poll.find(params[:id])

    if @poll.update_attributes(params[:poll])
      redirect_to @poll, notice: 'Poll was successfully updated.' 
    end
  end

  def edit
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

  def results
    @poll = Poll.find(params[:id])
  end


  def vote_count poll
    poll.questions.count
  end

  def question_count
    # don't know why this isn't working
  end



end


# add button to add questions
# add define question types
# add different answer fields depending on types
# add admin pages
# add validations
















