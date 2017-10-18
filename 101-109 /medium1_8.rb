# # Problem

# # F(1) = 1
# # F(2) = 1
# # F(n) = F(n - 1) + F(n - 2) where n > 2

# # I/O

# input: integer
# output: integer

# # Logic

# - input integer 
# - add the fibonnaci value of the two previous index values in the series
# - if n = 1 return 1
# - if n = 2 return 2

# # Methods

# # Code

def fibonacci(index)
  if index == 1
    return 1
  elsif index == 2
    return 1
  else 
    return fibonacci(index - 1) + fibonacci(index - 2)
  end
end

# Tests

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765