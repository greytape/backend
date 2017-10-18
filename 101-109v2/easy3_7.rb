# # Problem

# - write method that takes an array, and returns a new array
#   containing every other element from the first array

# # I/O

# input: array
# output: array

# # Logic

# - iterate through elements of input array with index
# - select elements with an odd index

# # Methods

# array#select
# array#with_index
# integer#odd?

# # Code

def oddities(array)
  array.select.with_index { |e, i| (i + 1).odd? }
end

# Tests

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
