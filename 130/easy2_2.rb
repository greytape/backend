=begin 

Problem

I: 2 arrays
O: 1 array

- method should take two arrays, and return new array of nested arrays, comprising the 1st, 2nd, 3rd etc... element of both input arrays 
- new array should have same number of elements as input arrays

Logic

- create new empty array
- iterate through range from 0..size of input arrays
- add ith element of each array to the new array
- return new array

=end

# Code

def zip(arr1, arr2)
  zipped_arr = []
  (0...arr1.size).each { |index| zipped_arr << [arr1[index], arr2[index]] }
  zipped_arr
end

# Tests

p zip([1, 2, 3], [4, 5, 6]) #== [[1, 4], [2, 5], [3, 6]]