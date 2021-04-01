require "test_helper"

class SessionStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @session_store = session_stores(:one)
  end

  test "should get index" do
    get session_stores_url, as: :json
    assert_response :success
  end

  test "should create session_store" do
    assert_difference('SessionStore.count') do
      post session_stores_url, params: { session_store: { last_login: @session_store.last_login, user_id: @session_store.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show session_store" do
    get session_store_url(@session_store), as: :json
    assert_response :success
  end

  test "should update session_store" do
    patch session_store_url(@session_store), params: { session_store: { last_login: @session_store.last_login, user_id: @session_store.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy session_store" do
    assert_difference('SessionStore.count', -1) do
      delete session_store_url(@session_store), as: :json
    end

    assert_response 204
  end
end
