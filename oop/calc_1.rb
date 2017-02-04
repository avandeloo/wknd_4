# Below, we have two types of calculators. The simple one can perform basic arithmetic, 
# while the fancy one can also do square roots in addition to basic arithmetic.
# There is nothing wrong with the code below per se, but there is duplication
# between the two classes, since they each contain four identical methods.
# This is generally considered to be a code design flaw, since there may come
# a time where we decide to change how these methods work, and we may accidentally
# update the methods in one class, and forget to update them in the other, and our
# two classes become out of sync. This known as the DRY principle, that is:
# Don't Repeat Yourself.
# There are a number of techniques that we can use to fix this example. One is 
# a fundamental concept in OOP known as Inheritance. Your exercise is to research 
# Inheritance in Ruby, and use it to remove the duplication (or DRY up) the code 
# below. You must also write the driver code to test your classes.

class SimpleCalculator

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

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

simp_calc = SimpleCalculator.new
adv_calc = FancyCalculator.new

# Write your own driver code below:

puts "TESTING add..."
puts

result1 = simp_calc.add(2, 3)
result2 = adv_calc.add(2, 3)

puts "Your method returned:"
puts result1
puts result2
puts

if result1 == 5 && result2 == 5
  puts "PASS!"
else
  puts "F"
end

puts
puts "TESTING subtract..."
puts

result1 = simp_calc.subtract(2, 3)
result2 = adv_calc.subtract(2, 3)

puts "Your method returned:"
puts result1
puts result2
puts

if result1 == -1 && result2 == -1
  puts "PASS!"
else
  puts "F"
end

puts
puts "TESTING multiply..."
puts

result1 = simp_calc.multiply(2, 3)
result2 = adv_calc.multiply(2, 3)

puts "Your method returned:"
puts result1
puts result2
puts

if result1 == 6 && result2 == 6
  puts "PASS!"
else
  puts "F"
end

puts
puts "TESTING divide..."
puts

result1 = simp_calc.divide(4, 2)
result2 = adv_calc.divide(4, 2)

puts "Your method returned:"
puts result1
puts result2
puts

if result1 == 2 && result2 == 2
  puts "PASS!"
else
  puts "F"
end

puts
puts "TESTING square_root..."
puts

result = adv_calc.square_root(4)

puts "Your method returned:"
puts result
puts

if result == 2
  puts "PASS!"
else
  puts "F"
end

