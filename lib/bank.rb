#!/usr/bin/env ruby

# Student Name: Kathy Little
# Homework Week: 5
require 'account.rb'

class Bank

  #include account

  attr_reader :accounts, :bank_name, :id_number

  def initialize(bank_name)
    @bank_name = bank_name
    @accounts = { }
    @id_number = 0
  end 

  def make_new_account(customer_name, initial_dep)
    @id_number += 1
    new_account = Account.new(customer_name, initial_dep)
    @accounts[@id_number] = new_account
    return @id_number
  end

  def bank_deposit(account_no, deposit_amount)
    current_account = @accounts[account_no]
    return current_account.deposit(deposit_amount)
  end

  def bank_withdrawal(account_no, withdraw_amt)
    current_account = @accounts[account_no]
    return current_account.withdraw(withdraw_amt)
  end

  def get_hash_accounts_key(name)
    @accounts.each {|k, v|
      #puts "key = #{k}, value = #{v.name}"
      if (v.name == name)
        return k
      end
    }
    return "No account for this person."
  end
  
  def bank_deposit_by_name(name, deposit_amount)
    account_no = get_hash_accounts_key(name)
    bank_deposit(account_no, deposit_amount)
  end
  
  def bank_withdraw_by_name(name, withdrawal_amount)
    account_no = get_hash_accounts_key(name)
    bank_withdrawal(account_no, withdrawal_amount)
  end
  
  def bank_withdraw_overdraft_by_name(name, withdrawal_amount)
    account_no = get_hash_accounts_key(name)
    bank_withdrawal(account_no, withdrawal_amount)
  end  

end

  # @account_name.each {|key, value| puts "#{value} has Account number #{key}"}
  #   account_amount.each {|key, value| puts "#{key} has Account number #{value}"}
  #   end
