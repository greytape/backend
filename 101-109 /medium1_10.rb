# # I/O

# input: integer
# output: integer

# # Logic

# - use previous method 
# - turn result to string, get final character, turn to integer

# # Methods

# integer#to_s
# string#to_i

# Code

def fibonacci(index)
  first_num = 1
  second_num = 1
  (index - 1).times do
    first_num, second_num = second_num, second_num + first_num
  end
  first_num
end

def fibonacci_last(index)
  result = fibonacci(index)
  result.to_s[-1].to_i
end

# Tests

puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
puts fibonacci_last(123456789) # -> 4