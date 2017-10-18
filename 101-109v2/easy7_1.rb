# # Problem

# - method that takes two arrays as arguments and returns new array
#   with elements of parameters alternating

# # Logic

# - initialise new array
# - execute loop 'array_length' times
#   - in that loop take first value of first array and add to new array
#   - in that loop take first value of second array and add to new array
# - return new array

# # Methods

# integer#times
# array#length
# array#shift
# array#<<

# Code

def interleave(array1, array2)
  new_array = []
  array1.length.times do 
    new_array << array1.shift
    new_array << array2.shift
  end
  new_array
end

# Tests

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']