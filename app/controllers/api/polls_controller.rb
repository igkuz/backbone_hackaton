class Api::PollsController < Api::ApplicationController

  def show
    @poll = Poll.find(params[:id])
    respond_with @poll
  end

  def index
    @polls = Poll.all
    respond_with @polls
  end

  def create
    @poll = Poll.new(params[:poll])
    @poll.save

    respond_with @poll
  end
end
