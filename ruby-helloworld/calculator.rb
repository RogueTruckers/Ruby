class Calculator
  def plus(number, other)
    number + other
  end

  def minus(number, other)
    number - other
  end

  def multiply(number, other)
    number * other
  end

  def divide(number, other)
    number.to_f / other
  end
end

calculator = Calculator.new
puts calculator.plus(2, 3)
puts calculator.minus(2, 3)
puts calculator.multiply(2, 3)
puts calculator.divide(2, 3)