# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

module SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

module FancyCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator

  include SimpleCalculator
  include FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

calc = WhizBangCalculator.new

puts "TESTING add..."
puts

result = calc.add(2, 3)

puts "Your method returned:"
puts result
puts

if result == 5
  puts "PASS!"
else
  puts "F"
end

puts
puts "TESTING subtract..."
puts

result = calc.subtract(2, 3)

puts "Your method returned:"
puts result
puts

if result == -1
  puts "PASS!"
else
  puts "F"
end

puts
puts "TESTING multiply..."
puts

result = calc.multiply(2, 3)

puts "Your method returned:"
puts result
puts

if result == 6
  puts "PASS!"
else
  puts "F"
end

puts
puts "TESTING divide..."
puts

result = calc.divide(4, 2)

puts "Your method returned:"
puts result
puts

if result == 2
  puts "PASS!"
else
  puts "F"
end

puts
puts "TESTING square_root..."
puts

result = calc.square_root(4)

puts "Your method returned:"
puts result
puts

if result == 2
  puts "PASS!"
else
  puts "F"
end

puts
puts "TESTING hypotenuse..."
puts

result = calc.hypotenuse(3, 4)

puts "Your method returned:"
puts result
puts

if result == 5
  puts "PASS!"
else
  puts "F"
end

puts
puts "TESTING exponent..."
puts

result = calc.exponent(3, 4)

puts "Your method returned:"
puts result
puts

if result == 81
  puts "PASS!"
else
  puts "F"
end