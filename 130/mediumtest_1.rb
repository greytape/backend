require 'minitest/autorun'
require_relative 'transaction'
require_relative 'cash_register'

class CashRegisterTest < Minitest::Test
  

  def test_accept_money
    cash = CashRegister.new(100)
    trans = Transaction.new(50)
    trans.amount_paid = 50
    assert_equal(cash.total_money + 50, cash.accept_money(trans))
  end

  def test_change 
    cash = CashRegister.new(100)
    trans = Transaction.new(34)
    trans.amount_paid = 50
    assert_equal(cash.change(trans), 16)
  end

  def test_give_receipt
    cash = CashRegister.new(100)
    trans = Transaction.new(50)
    assert_output("You've paid $50.\n") do 
      cash.give_receipt(trans)
    end
  end

  def test_prompt_for_payment
    register = CashRegister.new(100)
    transaction = Transaction.new(50)
    input = StringIO.new('50')
    output = StringIO.new
    transaction.prompt_for_payment(input: input, output: output)
    assert_equal(50, transaction.amount_paid)
  end
end