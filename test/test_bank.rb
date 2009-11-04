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
    @account_no = @new_bank.make_new_account("Mary Pepper", 15000)
     @account_no = @new_bank.make_new_account("Mary Smith", 25000)
     @account_no = @new_bank.make_new_account("Jim Hopper", 10000)
     @account_no = @new_bank.make_new_account("Tom Clancy", 5000)
     @account_no = @new_bank.make_new_account("Harold Salt", 1000)
     @account_no = @new_bank.make_new_account("Jim Jones", 50)
  end

  def test_make_new_account
    puts "in test_make_new_account"
    @account_no = @new_bank.make_new_account("Tim Small", 25000)
    puts "@account_no = #{@account_no}"
    current_account = @new_bank.accounts[@account_no]

    assert_equal 7, @account_no
    assert_equal Account, current_account.class
    assert_equal "Tim Small", current_account.name
    
    #figure out way to make sure there isn't an acct. already
  end

  def test_bank_deposit
    puts "in test_bank_deposit"
    @account_no = @new_bank.make_new_account("Tim Small", 25000)
       
    current_account = @new_bank.accounts[@account_no]
    puts "@account_no = #{@account_no}"
    puts "@current_account.class = #{@current_account.class}"
    current_balance = current_account.balance
    puts "current_balance = #{current_balance}"
    deposit_amt = 115
    new_balance = current_balance + deposit_amt
    puts "new_balance = #{new_balance}"
    assert_equal new_balance, @new_bank.bank_deposit(@account_no, deposit_amt)
  end
  
  def test_bank_withdrawal
    puts "in test_bank_withdrawal"
    @account_no = @new_bank.make_new_account("Mary Pepper", 15000)
       
    current_account = @new_bank.accounts[@account_no]
    puts "@account_no = #{@account_no}"
    puts "@current_account.class = #{@current_account.class}"
    current_balance = current_account.balance
    puts "current_balance = #{current_balance}"
    withdraw_amt = 5000
    new_balance = current_balance - withdraw_amt
    puts "new_balance = #{new_balance}"
    assert_equal new_balance, @new_bank.bank_withdrawal(@account_no, withdraw_amt)
  end
 
 def test_zzget_hash_accounts_key
   assert_equal 4, @new_bank.zzget_hash_accounts_key("Tom Clancy")
 end
 
 def test_bank_deposit_name_search_known
   x = @new_bank.bank_deposit_name_search_known("Tom Clancy", 25.00)
   puts x 
   #assert_equal "Harold Salt", @new_bank.zz_hash_accounts_key("Harold Salt")
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

