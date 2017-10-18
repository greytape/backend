# # I/O

# input: integer
# output: integer

# # Logic

# - use ternary operator as if/else

# # Methods

# none?

# # Code

def negative(int)
  int <= 0 ? int : -int
end

# Tests

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0