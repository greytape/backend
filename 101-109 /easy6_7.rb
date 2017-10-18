# # I/O

# input: (one) array
# output: (two) arrays

# # Logic

# - initialise two new empty arrays
# - iterate through the input array with an index
# - if index is greater than half input array size add to array 2, else array 1
# - size 6 half 3 [1,2,3,4,5,6]
# - size 5 half 2 [1,2,3,4,5]

# # Methods

# array#size
# array#each_with_index

# # Code

def halvsies(arr)
  new_arr1, new_arr2 = [], []
  arr.each_with_index do |e, i|
    if arr.size.odd?
      i <= (arr.size / 2) ? new_arr1 << e : new_arr2 << e
    else
      i <= ((arr.size / 2) - 1) ? new_arr1 << e : new_arr2 << e
    end
  end
  [new_arr1, new_arr2]
end
# Tests

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]