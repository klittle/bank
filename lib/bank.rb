#!/usr/bin/env ruby

# Student Name: Kathy Little
# Homework Week: 5
require 'account.rb'

class Bank
  
  
  
  attr_reader :accounts, :bank_name

  def initialize(bank_name)
    @bank_name = bank_name
    @accounts = { }
    @id_number = 0
  end 

  def make_new_account(customer_name, initial_dep)
    @id_number += 1
    new_account = Account.new(customer_name, initial_dep)
    @accounts [@id_number] = new_account
    return @id_number
  end

  # def access_accounts
  # #     Account::initialize
  # end

end






















# def make_new_account
#   @account_name = {
#     1 => "Mary Smith",
#     2 => "Jim Hopper",
#     3 => "Sally Supper",
#     4 => "Tom Clancy"}

  
  
  # @account_name.each {|key, value| puts "#{value} has Account number #{key}"}
  #   account_amount.each {|key, value| puts "#{key} has Account number #{value}"}
  #   end
  




