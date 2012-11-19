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
  end

  def create
    @poll = Poll.new(params[:poll])
    @poll.save

    if @poll.save
      redirect_to polls_path, notice: 'Poll was successfully created.'
    else
      render action: "new" 
    end
  end

  def results
    @poll = Poll.find(params[:id])
  end

end


# add define question types
# add different answer fields depending on types
# not showing all questions in vote after adding remove tag
# add admin pages
# add author to answers
# add validations
# if no questions, destroy poll (or show an error page)
# add poll editing index for admin (last addition)
# add notices for delete and add















