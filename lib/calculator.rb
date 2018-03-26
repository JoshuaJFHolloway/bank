require 'account'

module Calculator

  def deduct(amount)
    @balance -= amount
  end

  def add(amount)
    @balance += amount
  end

end