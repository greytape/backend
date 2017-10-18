# # Problem

# - method that takes two arrays as arguments and returns
#   a single merged array only containing unique values

# # Logic

# - concatenate arrays, then call uniq on combined array

# # Methods 

# array#uniq

# Code

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

# Tests

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]