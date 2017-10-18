# Approach

# - create method
# - multiply the arguments, print the result with string interpolation
# - should probably validate input

# Code

def multiply(num1, num2)
  if num1.to_s.to_i != num1
    puts "Argument must be an integer, please try again."
    return
  end
  num1 * num1
end

# Test

puts multiply(5,3) == 15
puts multiply(10,10) == 100
puts multiply('hi',10) == 100

