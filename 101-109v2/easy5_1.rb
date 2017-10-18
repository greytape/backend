# # Problem 

# - method to return sum of ascii values of each character in input string

# # I/O

# input: string
# output: integer

# # Logic

# - convert string to array
# - transform array elements to ascii values
# - return sum of elements of array

# # Methods

# string#chars
# array#map
# string#ord
# array#reduce

# Code

def ascii_value(string)
  counter = 0
  string.chars.map { |e| counter += e.ord }
  counter
end

# Tests

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0