# # I/O

# input: integer
# output: integer

# # Logic

# - put two numbers of the series  (1 and 1) in an array
# - then add a new number based on summing the last two (separate method)
# - at each iteration calculate the length of the latest number in the array
# - break the loop when the length is equal to or greater than the test value
# - return the index

# # Methods

# array#size

# # Code

require 'pry'

def new_fibonacci(arr)
  arr[-2] + arr[-1]
end 

def find_fibonacci_index_by_length(test)
  array = [1,1]
  loop do
    array << new_fibonacci(array)
    break if array[-1].to_s.size >= test
  end
  array.size
end

# Tests

puts find_fibonacci_index_by_length(2) #== 7
puts find_fibonacci_index_by_length(10) #== 45
puts find_fibonacci_index_by_length(100) #== 476
puts find_fibonacci_index_by_length(1000) #== 4782
puts find_fibonacci_index_by_length(10000) #== 47847