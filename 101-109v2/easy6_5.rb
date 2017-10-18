# # Problem

# - As before, but return new array object and do not alter the original


# # Logic

# - initialise new empty array
# - iterate through original array, unshifting elements into new array
# - return new array

# # Methods

# array#each
# array#unshift

# Code

def reverser(array)
  new_array = []
  array.each { |e| new_array.unshift(e) }
  new_array
end

# Tests

list = [4,3,2,1]

p reverser(list)