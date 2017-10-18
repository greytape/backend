# # Problem

# - write a method that returns the average of an array of integers

# # I/O

# input: array (of integers)
# output: integer

# # Logic

# - count total value of integers in array
# - divide by length of array

# # Methods

# array#reduce
# array#length

# # Code

def average(array)
  ( array.reduce(:+) ) / array.length
end

# Tests

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40