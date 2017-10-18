# # I/O

# input: integer 
# output: integer

# # Logic

# - turn first integer into string, then string into array
# - rotate array using method from previous exercise
# - do this int2 times
# - turn array into string, then into integer
# - return array

# # Methods

# integer#to_s
# string#to_a
# integer#times
# array#to_s
# string#to_i

# # Code

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_digits_xtimes(int1, int2)
  arr = int1.to_s.split('')
  (int2 - 1).times { arr = rotate_array(arr) }
  arr.join.to_i
end

def rotate_rightmost_digits(int1, int2)
  arr = int1.to_s.split('')
  arr1 = arr[0..-(int2 + 1)]
  arr2 = arr[-(int2)..-1]
  arr2 = rotate_array(arr2)
  (arr1 + arr2).join.to_i
end

# Tests

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917

