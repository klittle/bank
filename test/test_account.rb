#!/usr/bin/env ruby -w

###
# Student Name: Kathy Little
# Homework Week: 5
#

$: << 'lib'
require 'test/unit'
require 'account.rb'

###

class TestAccount < Test::Unit::TestCase
  def setup
    @my_account = Account.new("Money Penny", 25)
  end
  
  def test_balance
  assert_equal 25, @my_account.balance
  assert_equal "Money Penny", @my_account.name
  end
  # 
  def test_deposit
    current_balance = @my_account.balance
    deposit_amt = 35
    new_balance = current_balance + deposit_amt
  assert_equal new_balance, @my_account.deposit(deposit_amt)
  end
  
  def test_withdraw
    current_balance = @my_account.balance
    withdraw_amt = 10
    new_balance = current_balance - withdraw_amt
  assert_equal new_balance, @my_account.withdraw(withdraw_amt)
  end
  
  def test_withdraw_overdraft
    current_balance = @my_account.balance
    withdraw_amt = current_balance + 1
    assert_equal  "Insufficient Funds", @my_account.withdraw(withdraw_amt)
  end
  
  def test_withdraw_all_money
    current_balance = @my_account.balance
    assert_equal 0, @my_account.withdraw(current_balance)
  end


end
