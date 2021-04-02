require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  #
  test "It should return success in user events routes" do
    params = { event: "SAY_HELLO"}
    post '/api/v1/user_events', params:params
    assert_response :ok
  end
end
