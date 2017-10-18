# # Problem

# - method that takes integer as argument. Outputs right-angled
#   triangle of stars, with height and width integers stars long.

# # Logic

# - create an array with 'integer' elements, the last one being a star 
#   - use times and unshift
# - iterate through a loop 'integer' times
#   - at each iteration, puts array
#   - remove first array element and add new star to end of array

# # Methods

# array#times
# array#join
# array#unshift
# array#shift
# Kernel#puts
# array#<<

# Code

def triangle(integer)
  array = ['*']
  (integer - 1).times {array.unshift(' ')}
  integer.times do |n|
    puts array.join
    array.shift
    array << '*'
  end
end

# Tests

triangle(5)
triangle(9)
triangle(8)