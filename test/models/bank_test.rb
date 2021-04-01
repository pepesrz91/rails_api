require "test_helper"

class BankTest < ActiveSupport::TestCase
  test "It should not create a bank without name" do
    bank = Bank.new
    bank.save
    assert_not bank.valid?
  end

  test "It should create a bank properly" do
    bank = Bank.new name:"Scotia"
    bank.save
    assert bank.valid?
  end

end
