# # Problem

# - method that takes single array as argument and returns two arrays
# - returned arrays must contain first and second halves of original
# - if odd number of elements, 2nd array must contain additional element

# # Logic

# - measure length of string
# - use if else statement if string length is odd or not
# - 

# # Methods

# string#length
# integer#odd?

# Code

def halvsies(array)
  array_length = array.length
  if array_length.odd?
    arr1 = array[0..(array_length/2)]
    arr2 = array[((array_length/2) + 1)..-1]
  else
    arr1 = array[0..((array_length/2 - 1))]
    arr2 = array[((array_length/2))..-1]
  end
  [arr1,arr2]
end

# Tests

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]