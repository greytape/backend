# # Problem

# - method that takes array of integers as input and returns 
#   sum of all subsequences of that array (eg 0, 0..1, 0..2)

# # Logic

# - initialise total at 0  
# - iterate through array with index
#   - sum values from 0 to current index and add to total
# - return total

# Methods

def sum_of_sums(array)
  total = 0
  array.each_with_index do |e, i|
    total += array[0..i].reduce(:+)
  end
  total
end

# Code
# Tests

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35