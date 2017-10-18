# # I/O

# input: (two) arrays
# output: (one) array

# # Logic

# - initialise new array
# - use for loop with range of 1 to length of arrays
# - using index, add element of arr1, then arr2 to the new array
# - return new array

# # Methods

# array#[]

# # Code

def interleave(arr1, arr2)
  new_array = []
  for i in 1..(arr1.size)
    new_array << arr1[(i-1)]
    new_array << arr2[(i-1)]
  end
  new_array
end

# Tests

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']