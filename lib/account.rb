require 'date'
require 'calculator'

class Account

  attr_accessor :balance, :date, :statement
  include Calculator

  def initialize
    @balance = 0
    @date = DateTime.now.strftime("%d/%m/%Y")
    @statement = [["date || credit || debit || balance"]]
  end

  def deposit(amount)
    add(amount)
    dep_statement(amount)
  end

  def withdraw(amount)
    deduct(amount)
    with_statement(amount)
  end

  def dep_statement(amount)
    @statement.push(["#{@date}, '', #{amount}, #{@balance}"])
  end

  def with_statement(amount)
    @statement.push(["#{@date}, #{amount}, '', #{@balance}"])
  end

  def print_statement
    array = @statement
    array.each { |x| puts x }
  end
end