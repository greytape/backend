# # Problem

# - method to take array of integers, return new array of integers, 
#   sorted based on the alphabetical value of the english words for 
#   each number

# # I/O

# input: array
# output: array

# # Logic

# - initialise array of numbers in their 'alphabetical' order
# - sort values in input array based on the index of those numbers in 
#   the alpha_number_array

# # Methods

# array#find_index
# array#sort_by

# Code

ALPHA_NUMBER_ARRAY = [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

def alphabetic_number_sort(array)
  array.sort_by{|x| ALPHA_NUMBER_ARRAY.find_index(x) }
end

# Tests

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]