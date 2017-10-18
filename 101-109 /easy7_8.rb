# # I/O

# input: (two) arrays
# output: (one) array

# # Logic

# - initialise new, empty array
# - iterate through range from 0 to the size of the first array
# - at each iteration, multiply the values at that array index and add to new array
# - return new array

# # Methods

# array#<<

# # Code

def multiply_list(arr1, arr2)
  new_array = []
  for i in 0..(arr1.size - 1)
    new_array << (arr1[i] * arr2[i])
  end
  new_array
end

# Tests

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
