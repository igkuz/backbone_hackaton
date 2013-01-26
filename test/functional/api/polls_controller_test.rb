require 'test_helper'

class Api::PollsControllerTest < ActionController::TestCase
  test "should get show" do
    poll = create :poll
    get :show, :id => poll.id, :format => :json
    assert_response :success
    body = MultiJson.load(response.body, :symbolize_keys => true)
    assert_equal body[:id], poll.id
  end

  test "should get index" do
    polls = create_list :poll, 5
    get :index, :format => :json
    assert_response :success
  end

  test "should create poll" do
    poll_attr = attributes_for :poll
    post :create, :poll => poll_attr, :format => :json
    assert_response :success
    
    poll = Poll.find_by_name(poll_attr[:name])
    refute_nil poll
  end

end
