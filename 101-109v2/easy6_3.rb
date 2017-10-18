# # Problem

# - take integer, and return index of first fibonacci number with
#   input integer number of digits 

# # Logic

# - generate fibonacci sequence in a loop
#   - at each iteration, test length of current number
#   - when length of fibonacci == parameter, return index
# - 1, 1, 2, 3, 5, 8, 13

# # Methods

# string#length

# Code


def find_fibonacci_index_by_length(integer)
  fibonacci_array = [1, 1]
  loop do 
    fibonacci_array << fibonacci_array[-2] + fibonacci_array[-1]
    break if fibonacci_array[-1].to_s.length == integer
  end
  (fibonacci_array.find_index(fibonacci_array[-1]) + 1)
end

# Tests

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847