# # I/O

# input: (two) arrays
# output: (one) array

# # Logic

# - initialise an empty array
# - iterate through first array
# - within the block of that first iteration, create a block to iterate through 
# - second array. Within nested block, multiply each element and add to new array.
# - sort new array before returning

# # Methods

# array#each
# array#<<
# array#sort

# # Code

def multiply_all_pairs(arr1, arr2)
  new_arr = []
  arr1.each do |x|
    arr2.each do |y|
      new_arr << x * y
    end
  end
  new_arr.sort
end

# Tests

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]