# # I/O

# input: array
# output: array

# # Logic

# - return array from position 1 to length of array, plus zeroth element 

# # Methods

# array#length
# array#[]

# # Code

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

# Tests

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]    