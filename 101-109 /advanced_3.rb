# # Problem

# - Creata a method that transposes a matrix, swapping the rows and columns
# - the original matrix should be unaffected
# - method should return new matrix

# # I/O

# input: array
# output: array

# # Logic

# - size of matrix is key
# - initialise new array with same number of nested arrays as input array
# - iterate through first nested array, adding first value to first nested array, then second value to nested array and so on
# - then iterate through second nested array doing the same thing
# - return new array

# # Methods

# array#<<

# # Code

def transpose(matrix)
  new_matrix = []
  matrix.length.times { new_matrix << [] }
  matrix.each do |arr|
    arr.each_with_index { |e, i| new_matrix[i] << e }
  end
  new_matrix
end

# Tests

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]