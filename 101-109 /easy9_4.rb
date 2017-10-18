# # I/O

# input:  integer
# output: array

# # Logic

# - initialise empty array
# - iterate through a range between 1 and the input number 
# - at each iteration add the range elmeent to the empty array
# - return array
 
# # Methods

# none?

# # Code

def sequence(int)
  arr = []
  for i in 1..int
    arr << i
  end
  arr
end

# Tests

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]