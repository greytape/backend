# # I/O

# input: (two) integers
# output: array

# # Logic

# - initialise empty array
# - iterate through range from 1 to count value
# - at each iteration add second number to itself and add to arrray
# - return array

# # Methods

# range#each
# array#<<

# # Code

def sequence(int1, int2)
  arr = []
  (1..int1).each do
    arr[-1] ? arr << int2 + arr[-1] : arr << int2
  end
  arr
end

# Tests

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []