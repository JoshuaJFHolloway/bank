require 'account'

module Calculator

  def add(amount)
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

end