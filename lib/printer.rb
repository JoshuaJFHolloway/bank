module Printer

  def dep_statement(amount, balance, date)
    statement.push(["#{date} || || #{sprintf('%.2f', amount)} || #{sprintf('%.2f', balance)}"])
  end

  def with_statement(amount, balance, date)
    statement.push(["#{date} || #{sprintf('%.2f', amount)} || || #{sprintf('%.2f', balance)}"])
  end

  def print_statement
    array = @statement
    array.each { |x| puts x }
  end

end