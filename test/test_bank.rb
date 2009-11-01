#!/usr/bin/env ruby -w

###
# Student Name: Kathy Little
# Homework Week: 5
#

$: << 'lib'
require 'test/unit'
require 'bank.rb'
require 'account.rb'

class TestBank < Test::Unit::TestCase

#include account

  def setup
    puts "in setup"
    @new_bank = Bank.new("Honest Bank")
  end

  def test_make_new_account
    puts "in test_amake_new_account"
    @account_id = @new_bank.make_new_account("Tim Small", 25000)
    puts "@account_id = #{@account_id}"
    current_account = @new_bank.accounts[@account_id]

    assert_equal 1, @account_id
    assert_equal Account, current_account.class
    assert_equal "Tim Small", current_account.name
    
    #figure out way to make sure there isn't an acct. already
  end

  def test_bank_deposit
    puts "in test_bank_deposit"
    @account_id = @new_bank.make_new_account("Tim Small", 25000)
       
    current_account = @new_bank.accounts[@account_id]
    puts "@account_id = #{@account_id}"
    puts "@current_account.class = #{@current_account.class}"
    current_balance = current_account.balance
    puts "current_balance = #{current_balance}"
    deposit_amt = 115
    new_balance = current_balance + deposit_amt
    puts "new_balance = #{new_balance}"
    assert_equal new_balance, @new_bank.bank_deposit(@account_id, deposit_amt)
  end

  # def test_deposit_to_acct_unknown_person
  #   flunk "write me"
  # end
  # 
  # def test_withdraw_known_person
  #   flunk "write me"
  # end
  # 
  # def test_withdraw_known_person_overdraw
  #   flunk "write me"
  # end
  # 
  # def test_withdraw_unknown_person
  #   flunk "write me"
  # end
end

