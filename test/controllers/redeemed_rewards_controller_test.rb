require "test_helper"

class RedeemedRewardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @redeemed_reward = redeemed_rewards(:one)
  end

  test "should get index" do
    get redeemed_rewards_url, as: :json
    assert_response :success
  end

  test "should create redeemed_reward" do
    assert_difference('RedeemedReward.count') do
      post redeemed_rewards_url, params: { redeemed_reward: { name: @redeemed_reward.name, price: @redeemed_reward.price, timestamp: @redeemed_reward.timestamp, user_id: @redeemed_reward.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show redeemed_reward" do
    get redeemed_reward_url(@redeemed_reward), as: :json
    assert_response :success
  end

  test "should update redeemed_reward" do
    patch redeemed_reward_url(@redeemed_reward), params: { redeemed_reward: { name: @redeemed_reward.name, price: @redeemed_reward.price, timestamp: @redeemed_reward.timestamp, user_id: @redeemed_reward.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy redeemed_reward" do
    assert_difference('RedeemedReward.count', -1) do
      delete redeemed_reward_url(@redeemed_reward), as: :json
    end

    assert_response 204
  end
end
