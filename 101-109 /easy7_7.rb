# # I/O

# input: array
# output: float

# # Logic

# - initialise an integer variable 'sum'
# - iterate through the input array, adding entries to sum
# - divide sum by float value based off length of the array
# - return result to 3dp

# # Methods

# array#each
# array#size
# integer#to_f
# kernel#format

# # Code

require 'pry'

def show_multiplicative_average(arr)
  sum = 1
  arr.each { |e| sum *= e }
  result = sum / (arr.size.to_f)
  puts "The result is #{format("%.3f", result)}."
end


# Tests

show_multiplicative_average([3, 5])
#The result is 7.500

show_multiplicative_average([6])
#The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
#The result is 28361.667
