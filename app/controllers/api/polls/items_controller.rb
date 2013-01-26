class Api::Polls::ItemsController < Api::ApplicationController
  def vote
    @poll = Poll.find(params[:poll_id])
    @item = @poll.items.find(params[:id])
    @item.vote!

    respond_with @item, location: nil
  end
end
