#!/usr/bin/env ruby

# Student Name: Kathy Little
# Homework Week: 5

class Bank
  
  
  
  attr_reader :accounts, :bank_name
  
  def initialize(bank_name)
    @bank_name = "bank_name"
    @accounts = { }
  end 
  
  def make_new_account
    @accounts = {
      1 => "Mary Smith",
      2 => "Jim Hopper",
      3 => "Sally Supper"}
    
    puts @accounts.keys.inspect
    end
  
  # def access_accounts
  # #     Account::initialize
  # end
    
end

def test_hash_assign
  @deposit = deposit
  @deposit = "$15,000"
end

def make_new_account
  @account_name = {
    1 => "Mary Smith",
    2 => "Jim Hopper",
    3 => "Sally Supper",
    4 => "Tom Clancy"}

    
  account_amount = {
    1 => "$50,000",
    2 => "$25,000",
    3 => "$15,000",
    4 => "$13,000"
    5 => test_hash_assign}
  
  
  @account_name.each {|key, value| puts "#{value} has Account number #{key}"}
  account_amount.each {|key, value| puts "#{key} has Account number #{value}"}
  end
  
make_new_account


def make_steves_array
  steves_array = {
    "Mary Smith" => "$50,000",
     "Jim Hopper" => "25,000",
     "Sally Supper" => "15,000"}
end



