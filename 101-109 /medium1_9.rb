# # I/O

# input: integer
# output: integer

# # Logic

# - set first_num at 1
# - set second_num as 1
# - go through a block input integer times
# - set first_num as second_num, set second_num as first_num + second_num
# - return second_num

# # Methods

# integer#times

# # Code

def fibonacci(index)
  first_num = 1
  second_num = 1
  (index - 1).times do
    first_num, second_num = second_num, second_num + first_num
  end
  first_num
end

# Tests

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
puts fibonacci(100_001) # => 4202692702.....8285979669707537501