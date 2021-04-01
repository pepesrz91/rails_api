require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #
  test "It should not create a user without a username and password" do
    user = User.new password: "Hello"
    assert_not user.save
  end

  test "It should create a user correctly" do
    user = User.new password:"Hello",  username:"John"
    assert user.save
  end
end
