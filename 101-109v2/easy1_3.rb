# # Problem

# - turn an integer into an array containing it's digits as integers

# # I/O

# input: integer
# output: array (of integers)

# # Logic

# - turn integer into string
# - split string into array of characters
# - transform array into integers
# - return array

# # Methods

# integer#to_s
# string#chars
# array#map
# string#to_i

# # Code

def digit_list(int)
  int.to_s.chars.map { |n| n.to_i }
end

# Tests

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
