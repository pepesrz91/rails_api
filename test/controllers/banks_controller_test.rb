require "test_helper"

class BanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bank = banks(:one)
  end

  test "should get index" do
    get banks_url, as: :json
    assert_response :success
  end

  test "should create bank" do
    assert_difference('Bank.count') do
      post banks_url, params: { bank: { name: @bank.name } }, as: :json
    end

    assert_response 201
  end

  test "should show bank" do
    get bank_url(@bank), as: :json
    assert_response :success
  end

  test "should update bank" do
    patch bank_url(@bank), params: { bank: { name: @bank.name } }, as: :json
    assert_response 200
  end

  test "should destroy bank" do
    assert_difference('Bank.count', -1) do
      delete bank_url(@bank), as: :json
    end

    assert_response 204
  end
end
