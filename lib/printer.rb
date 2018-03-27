module Printer

  def dep_statement(amount, balance, date)
    statement.push(["#{date} || || #{amount} || #{balance}"])
  end

  def with_statement(amount, balance, date)
    statement.push(["#{date} || #{amount} || || #{balance}"])
  end

  def print_statement
    array = @statement
    array.each { |x| puts x }
  end

end