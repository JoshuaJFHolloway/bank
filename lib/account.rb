require 'date'
require 'calculator'

class Account

  attr_accessor :balance, :date, :statement
  include Calculator

  def initialize
    @balance = 0
    @date = DateTime.now.strftime("%d/%m/%Y")
    @statement = []
  end

  def deposit(amount)
    add(balance, amount)
    dep_statement(amount)
  end

  def withdraw(amount)
    deduct(balance, amount)
    with_statement(amount)
  end

  def dep_statement(amount)
    @statement.push([@date, '', amount, @balance])
  end

  def with_statement(amount)
    @statement.push([@date, amount, '', @balance])
  end

  def print_statement
    @statement
  end

end