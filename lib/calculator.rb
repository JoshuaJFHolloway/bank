require 'account'

module Calculator

  def deduct(balance, amount)
    @balance -= amount
  end

  def add (balance, amount)
    @balance += amount
  end

end