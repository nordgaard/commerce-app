require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end
​
  def subtract(number_one, number_two)
    return number_one - number_two
  end
​
  def multiply(number_one, number_two)
    return number_one * number_two
  end
​
  def divide(dividend, divisor)
    return dividend / divisor
  end
​
  def sqaure(number)
    return square * square
  end
​
  def power(number, exponent)
    return number ** exponent
  end
end

# calculator = Calculator.new 
# if Calculator.add(1,1) == 2
#   puts "PASS"
# else
#   puts "F"
# end

RSpec.describe Calculator do 
  describe '#add' do
    it 'should return the sum of the trees' do
    calc = Calculator.new
    sum = calc.add(4,6)
    expect(sum).to eq(10)
  end
end

  
