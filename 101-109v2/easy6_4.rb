# # Problem

# - method that takes array as argument and reverses its values
# - cannot use array#reverse, must return same array object

# # Logic

# - initialise empty new_array
# - pop elements out of original array, and into new array
# - then shift elements from new array into original array
# - return original array

# # Methods

# array#pop
# array#shift

# Code

def reverse!(old_array)
  new_array = []
  while old_array.length > 0
    new_array << old_array.pop
  end
  while new_array.length > 0
    old_array << new_array.shift
  end
  old_array
end

# Tests

list = [1,2,3,4]
list2 = ['a', 'b', 'c', 'd']

p reverse!(list)
p reverse!(list2)