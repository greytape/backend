# Approach

# - pretty much copy multiply method from easy3_4.rb

# Code

def multiply(num1, num2)
  if num1.to_s.to_i != num1
    puts "Argument must be an integer, please try again."
    return
  end
  num1 * num2
end

def square(num1)
  multiply(num1, num1)
end

def power(num1, pwr)
  total = multiply(num1, num1)
  counter = 2
  while counter < pwr
    total = multiply(total, num1)
    counter += 1
  end
  total
end

# Tests

puts power(3,2)
puts power(3,3)
puts power(3,4)