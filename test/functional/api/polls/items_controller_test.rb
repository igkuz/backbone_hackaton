require 'test_helper'

class Api::Polls::ItemsControllerTest < ActionController::TestCase

  test "should vote" do
    poll = create :poll
    items = create_list :poll_item, 3, poll: poll

    post :vote, poll_id: poll.id, id: items.first.id, format: :json
    assert_response :success

    poll = Poll.find(poll)
    assert_equal 1, poll.votes_count
  end

end
