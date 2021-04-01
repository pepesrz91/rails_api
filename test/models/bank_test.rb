require "test_helper"

class BankTest < ActiveSupport::TestCase
  test "It should not create a bank without name" do
    bank = Bank.new
    bank.save
    assert_not bank.valid?
  end

end
