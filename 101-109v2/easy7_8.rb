# # Problem

# - method that takes two arrays as arguments, returns one array
# - elements of return array should be product of elements of 
#   parameter arrays at each index

# # Logic

# - iterate through first array transforming it with index
# - multiply each element by value at same index in other array
# - return first array

# # Methods

# array#map
# array#with_index

# Code

def multiply_list(array1, array2)
  array1.map.with_index {|e, i| e * array2[i] }
end

# Tests

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
