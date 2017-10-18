# # Problem

# - method takes array of integers, multiplies elements, divides 
#   total by number of elements and outputs result to 3dp

# # Logic

# - calculate array length and store as variable
# - iterate through array multiplying total by each element
# - set result to total
# - divide total by string_length
# - use string interpolation and format to output result

# # Methods

# string#length
# array#reduce
# array#each
# integer#to_f
# kernel#format

# Code

def show_multiplicative_average(array)
  array_length = array.length
  total = array.reduce(:*).to_f
  answer = total / array_length
  p "The result is %.3f" %answer 
end

# Tests

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667