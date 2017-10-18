# I/O

# input: array
# output: array

# Logic

# - initialise array sorted by alphabetical_number
# - iterate through array of integers, using sort with a block
# - block should compare using the spaceship operator referring to the alpha_array
# - this should put them all in the right order

# Methods

# array#sort

# Code

ALPHABETIC_NUMBERS = {0=>19, 1=> 9, 2=> 18,3=> 16,4=> 5,5=> 4,6=> 12,
  7=> 10,8=> 0,9=> 7,10=> 14,11=> 2,12=> 17,13=> 15,14=> 6,15=> 3,16=> 13,
  17=> 11,18=> 1,19=> 8}

def alphabetic_number_sort(arr)
  arr.sort { |x, y| ALPHABETIC_NUMBERS[x] <=> ALPHABETIC_NUMBERS[y]}
end

# Tests

p alphabetic_number_sort((0..19).to_a) #== [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]