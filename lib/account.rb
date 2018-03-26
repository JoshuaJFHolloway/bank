require 'date'
require 'calculator'

class Account

  include Calculator

  def initialize
    @balance = 0
    @date = date
  end

  def balance
    @balance
  end

  def date
    date = DateTime.now.strftime("%d/%m/%Y")
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    deduct(balance, amount)
  end


end