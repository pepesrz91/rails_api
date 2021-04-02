require "test_helper"

class RedeemedRewardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #

  test "It should create a redeemed reward properly" do
    bank = Bank.new(name:"Coolest Bank")
    bank.save
    user = User.new(username:"pepe", password:"hello", bank_id:bank.id)
    user.save
    redeemed = RedeemedReward.new  user_id:user.id
    redeemed.save
    assert redeemed.valid?
    redeemed.destroy
    user.destroy
  end

  test "It should not create a redeem reward without user id" do
    redeemed = RedeemedReward.new
    redeemed.save
    assert_not redeemed.valid?
  end
end
