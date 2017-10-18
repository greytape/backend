# # Problem

# - methods that take two arrays as arguments, and returns new array
#   containing the product of every possible combination of elemeents 
# - return array should be sorted in ascending order 

# # Logic

# - initialise new array
# - iterate through first array
#   - nested iteration through second array
#     - multiply both elements and add to new array
# - sort new array and return 

# # Methods

# array#each
# array#<<
# array#sort

# Code

def multiply_all_pairs(array1, array2)
  new_array = []
  array1.each do |x|
    array2.each do |y|
      new_array << x * y
    end
  end
  new_array.sort
end

# Tests

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]