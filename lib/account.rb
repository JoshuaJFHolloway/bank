require 'date'
require 'calculator'

class Account

  attr_accessor :balance, :date
  include Calculator

  def initialize
    @balance = 0
    @date = DateTime.now.strftime("%d/%m/%Y")
  end

  def deposit(amount)
    add(balance, amount)
  end

  def withdraw(amount)
    deduct(balance, amount)
  end


end