# # Problem

# - method that takes array as argument, and returns a new array
#   with the first element moved to the last

# # Logic

# - take first element from array and put on the end 
# - must use non-mutating methods

# # Methods

# array#[]

# Code

def rotate_array(array)
  array[1..-1] + array[0..0]
end

# Tests

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

# p x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]   
