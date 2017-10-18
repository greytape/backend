# # Problem

# - rotate (not necessarily square) matrix 90 degrees
# - first row should become last column
# - second row should become second last column
# - third row should become third last column
# - (mxn) should become (nxm)

# # I/O

# input: array
# output: array

# # Logic

# - new matrix should have number of nested arrays equal to length of first array
# - take last element of first array, iterate through it and add each element
#  to a different nested array in the new array
# - iterate backwards through the input array doing this
# - return new array 

# 1234
# 5678
# 9012

# 951
# 062
# 173
# 284

# # Methods

# array#length
# array#reverse
# array#each
# array#<<

# # Code

def rotate90(matrix)
  new_array = []
  matrix.first.length.times { new_array << [] }
  matrix.reverse.each do |arr|
    arr.each_with_index { |e, i| new_array[i] << e }
  end
  new_array
end

# Tests

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
