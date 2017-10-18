# Approach
# - input: integer
# - output: integer

# 1. 
# - method takes an integer as input 
# - searches for multiplies of 3 and 5 between 1 and that input
# - returns the sum of all multiples

# - use collect to return multiples
# - use inject to sum

# 2. 
# - so turns out you can't use collect or select on ranges
# - so i used each and put the multiples in an array first 

# Code

def multisum(num)
  arr = []
  (1..num).each { |x| arr << x if x % 3 == 0 || x % 5 == 0 }
  arr.reduce(:+)
end

# Tests

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168