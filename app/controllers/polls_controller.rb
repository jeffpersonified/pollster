class PollsController < ApplicationController

  def index
    @polls = Poll.all
  end

  def new
  end

  def create
    @poll = Poll.new
    @poll.save
  end

end
