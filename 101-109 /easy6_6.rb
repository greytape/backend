# # I/O

# input: (two) arrays
# output: (one) array

# # Logic

# - add the second array to the first array
# - initialise a new, empty array
# - iterate through the combined arrays
# - unless an element in the combined arrays is present in the new array
# - add it to the new array
# - return the new array

# # Methods

# array#each
# array#<<
# array#include?

# # Code

def merge(arr1, arr2)
  new_array = []
  arr2.each { |e| arr1 << e} 
  arr1.each { |e| new_array << e unless new_array.include?(e)}
  new_array
end  

# Tests

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]