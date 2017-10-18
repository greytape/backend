# # Problem

# - method that takes array and returns array with each element 
#   transformed to running total of numbers up to that point

# # I/O

# input: array
# output: array

# # Logic

# - iterate through array with map. 
# - Transform elements to sum all values of original array between first
#   and current index
# - return transformed array

# # Methods
 
# array#map
# array#with_index
# array#reduce

# Code

def running_total(array)
  array.map.with_index { |e, i| array[0..i].reduce(:+) }
end

# Tests

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []