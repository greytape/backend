# # Problem

# - write method with integer as argument
# - should return string of alternating 1's and 0's, starting with one,
#   of integer characters long

# # I/O

# input: integer
# output: string

# # Logic

# - initialise empty string
# - use integer#times to iterate through numbers
# - if current integer is even, add '1' to string, else add '0'
# - return empty string

# # Methods

# integer#times
# integer#even?
# string#<<

# # Code

def stringy(integer)
  return_string = ''
  integer.times { |i| i.even? ? return_string << '1' : return_string << '0'}
  return_string
end

# Tests

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'