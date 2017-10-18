# # Problem

# - take two already sorted arrays, then put them together
#   while maintaining that sorted order
# - output should be a single array

# # I/O

# input: (two) array
# output: (one) array

# # Logic 

# - initialise new (empty) array
# - initialise array 1 counter and array 2 counter at 0
# - setup while loop to cancel when counters equal array length
# - compare array1[counter] to array2[counter]
# - whichever is bigger, add that value to new array and increment that counter
# - return new array

# # Methods

# array#length
# integer#>
# array#<<

# # Code

require 'pry'

def merge(arr1, arr2)
  new_array = []
  counter_1, counter_2 = 0, 0
  while counter_1 <= arr1.length && counter_2 <= arr2.length
    if counter_1 == (arr1.length)
      element_1 = Float::INFINITY 
    else
      element_1 = arr1[counter_1]
    end

    if counter_2 == (arr2.length)
      element_2 = Float::INFINITY 
    else
      element_2 = arr2[counter_2]
    end

    break if element_1 == Float::INFINITY && element_2 == Float::INFINITY

    if element_1 <= element_2
      new_array << element_1
      counter_1 += 1
    elsif element_2 <= element_1
      new_array << element_2
      counter_2 += 1
    end
  end
  new_array
end

# Tests

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]