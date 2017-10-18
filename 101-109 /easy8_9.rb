# # I/O

# input: integer
# output: integer

# # Logic

# - take input integer, convert to string
# - reverse string, convert to integer

# # Methods

# integer#to_s
# string#reverse
# string#to_i

# # Code

def reversed_number(int)
  int.to_s.reverse.to_i
end

# Tests

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # Note that zeros get dropped!
puts reversed_number(1) == 1
