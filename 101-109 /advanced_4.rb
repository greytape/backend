# # Problem

# - adapt previous method so it works with non-square matrices

# # I/O

# input: array
# output: array

# # Logic

# - adapt method from previous exercise
# - previous method initialised new array with as many nested
#   arrays as the input matrix. This will be wrong in the new method.
# - this needs to have as many nested arrays as the length of each array.


# # Methods

# no new ones

# Code

def transpose(matrix)
  new_matrix = []
  matrix[0].length.times { new_matrix << [] }
  matrix.each do |arr|
    arr.each_with_index { |e, i| new_matrix[i] << e }
  end
  new_matrix
end

# Tests

puts transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
puts transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
puts transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
puts transpose([[1]]) == [[1]]