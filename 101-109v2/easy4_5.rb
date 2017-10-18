# # Problem 

# - method to return sum of all multiples of 3 and 5 between 1 and a 
#   given number

# # I/O

# input: integer
# output: integer

# # Logic

# - select mutiples of 3 and 5 in range between 1 and given number
# - sum resulting array with reduce

# # Methods

# range#select
# array#reduce

# Code

def multisum(num)
  (1..num).select { |num| num % 3 == 0 || num % 5 == 0 }.reduce(:+)
end

# Tests

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168