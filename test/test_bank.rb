#!/usr/bin/env ruby -w

###
# Student Name: Kathy Little
# Homework Week: 5
#Kathy Little

$: << 'lib'
require 'test/unit'
require 'bank.rb'
require 'account.rb'

class TestBank < Test::Unit::TestCase



  def setup
    @new_bank = Bank.new("Honest Bank")
    @account_no = @new_bank.make_new_account("Mary Pepper", 15000.00)
     @account_no = @new_bank.make_new_account("Mary Smith", 25000.00)
     @account_no = @new_bank.make_new_account("Jim Hopper", 1000.00)
     @account_no = @new_bank.make_new_account("Tom Clancy", 5000.00)
     @account_no = @new_bank.make_new_account("Harold Salt", 1000.00)
     @account_no = @new_bank.make_new_account("Jim Jones", 50.00)
  end

  def test_make_new_account
    @account_no = @new_bank.make_new_account("Tim Small", 25000.00)
    current_account = @new_bank.accounts[@account_no]

    assert_equal 7, @account_no
    assert_equal Account, current_account.class
    assert_equal "Tim Small", current_account.name
  end

  def test_bank_deposit
    @account_no = @new_bank.make_new_account("Tim Small", 25000.00)
       
    current_account = @new_bank.accounts[@account_no]
    current_balance = current_account.balance
    deposit_amt = 115.00
    new_balance = current_balance + deposit_amt
    assert_equal new_balance, @new_bank.bank_deposit(@account_no, deposit_amt)
  end
  
  def test_bank_withdrawal
    @account_no = @new_bank.make_new_account("Mary Pepper", 15000.00)
       
    current_account = @new_bank.accounts[@account_no]
    current_balance = current_account.balance
    withdraw_amt = 5000.00
    new_balance = current_balance - withdraw_amt
    assert_equal new_balance, @new_bank.bank_withdrawal(@account_no, withdraw_amt)
  end
 
 def test_get_hash_accounts_key
   assert_equal 4, @new_bank.get_hash_accounts_key("Tom Clancy")
 end
 
 def test_bank_deposit_by_name
   expected = 5025.00
   actual = @new_bank.bank_deposit_by_name("Tom Clancy", 25.00)
   assert_equal expected, actual
 end
 
 def test_bank_withdraw_by_name
   expected = 1.00
   actual = @new_bank.bank_withdraw_by_name("Jim Hopper", 999.00)
   assert_equal expected, actual
 end
 
 def test_bank_withdraw_overdraft_by_name
   expected = "Insufficient Funds"
   actual = @new_bank.bank_withdraw_by_name("Mary Smith", 25005.00)
   assert_equal expected, actual
 end
 

end

