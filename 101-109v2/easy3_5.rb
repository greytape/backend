# # Problem

# - write method to square numbers, using method from last exercise

# # I/O

# input: integer
# output: integer


# # Logic

# - call multiply in square, using parameter from square twice

# # Methods

# none

# # Code

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

# Tests

puts square(5) == 25
puts square(-8) == 64