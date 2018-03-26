require 'date'

class Account

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

end