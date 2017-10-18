# # Problem

# - write method to return sum of digits of an integer

# # I/O

# input: integer
# output: integer

# # Logic

# - turn integer into string
# - split string into array
# - transform elements of array to integers
# - add elements of array together

# # Methods 

# integer#to_s
# string#chars
# array#map
# string#to_i
# array#reduce

# # Code

def sum(integer)
  integer.to_s.chars.map(&:to_i).reduce(:+)
end 

# Tests

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45