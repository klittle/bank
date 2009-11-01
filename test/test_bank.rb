#!/usr/bin/env ruby -w

###
# Student Name: XXX
# Homework Week: 5
#

$: << 'lib'
require 'test/unit'
require 'bank.rb'

###
# NOTE: these tests are just hints, go nuts with them and/or the design...
#

class TestBank < Test::Unit::TestCase

  def setup
    # @bank_name = Bank.new("Honest Bank")
    #  @accounts = Account.new("Million Manny")
  end

  def test_make_new_acct
    assert_equal 0, 0
    # assert_equal Account.new("Million Manny", 15)
    #figure out way to make sure there isn't an acct. already
    #Do I need to assign acct number here
  end

  # def test_initial_deposit
  #   assert_equal 15, @client_account.first_deposit
  #   assert_equal "Million Manny", @client_account.new_client
  # end
  # 
  # def test_additional_deposits
  #     current_balance = @client_account.first_deposit
  #     deposit_amt = 115
  #     new_balance = current_balance + deposit_amt
  #   assert_equal new_balance, @client_account.deposit(deposit_amt)
  # end
  # end
  # 
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

