# # I/O

# input: integer
# output: integer

# # Logic

# - use method from previous exercise
# - iterate backwards from the integer length to 1 
# - could use reverse range but don't know how so use while loop and counter
# - make integer equal return value of input integer and index into previous method
# - return integer

# # Methods

# none

# # Code

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(int1, int2)
  arr = int1.to_s.chars
  arr1 = arr[0..-(int2 + 1)]
  arr2 = arr[-(int2)..-1]
  arr2 = rotate_array(arr2)
  (arr1 + arr2).join.to_i
end

def max_rotation(int)
  counter = int.to_s.length
  until counter == 1
    int = rotate_rightmost_digits(int, counter)
    counter -= 1
  end
  int
end

# Tests

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
