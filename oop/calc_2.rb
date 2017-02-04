# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

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

class FancyCalculator

  include SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

calc = FancyCalculator.new

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