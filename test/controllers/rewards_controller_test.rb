require "test_helper"

class RewardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reward = rewards(:one)
  end

  test "should get index" do
    get rewards_url, as: :json
    assert_response :success
  end

  test "should create reward" do
    assert_difference('Reward.count') do
      post rewards_url, params: { reward: { bank_id: @reward.bank_id, name: @reward.name, price: @reward.price } }, as: :json
    end

    assert_response 201
  end

  test "should show reward" do
    get reward_url(@reward), as: :json
    assert_response :success
  end

  test "should update reward" do
    patch reward_url(@reward), params: { reward: { bank_id: @reward.bank_id, name: @reward.name, price: @reward.price } }, as: :json
    assert_response 200
  end

  test "should destroy reward" do
    assert_difference('Reward.count', -1) do
      delete reward_url(@reward), as: :json
    end

    assert_response 204
  end
end
