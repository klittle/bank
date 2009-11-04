#!/usr/bin/env ruby

# Student Name: Kathy Little
# Homework Week: 5

class Account
  
  attr_reader :name, :balance
  
  def initialize(name, starting_balance)
    @name = name
    @balance = starting_balance
  end
   
  def deposit(deposit_amt)
    @balance += deposit_amt
  end
  
  def withdraw(withdraw_amt)
    if (withdraw_amt > @balance)
      return "Insufficient Funds"
    else
       @balance -= withdraw_amt
    end
  end

end

