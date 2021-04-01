require "test_helper"

class RewardManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reward_manager = reward_managers(:one)
  end

  test "should get index" do
    get reward_managers_url, as: :json
    assert_response :success
  end

  test "should create reward_manager" do
    assert_difference('RewardManager.count') do
      post reward_managers_url, params: { reward_manager: { login_streak: @reward_manager.login_streak, point: @reward_manager.point, user_id: @reward_manager.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show reward_manager" do
    get reward_manager_url(@reward_manager), as: :json
    assert_response :success
  end

  test "should update reward_manager" do
    patch reward_manager_url(@reward_manager), params: { reward_manager: { login_streak: @reward_manager.login_streak, point: @reward_manager.point, user_id: @reward_manager.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy reward_manager" do
    assert_difference('RewardManager.count', -1) do
      delete reward_manager_url(@reward_manager), as: :json
    end

    assert_response 204
  end
end
