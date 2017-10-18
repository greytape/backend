# # I/O

# input: array
# output: integer

# # Logic

# - initialise total
# - iterate through range up to array size
# - at each iteration, generate a subsequence up to that point to the new array
# - add the values of the subsequence together and add to the array
# - return the total

# # Methods

# range#each
# array#reduce

# # Code

def sum_of_sums(arr)
  total = 0
  (0..(arr.size - 1)).each { |i| total += arr[0..i].reduce(:+) }
  total
end

# Tests

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) 