# # Problem

# - write method to test if 3 numbers describe valid triangle
# - sum of lengths of two shortest sides must be greater than longest sides
# - all sides must be greater than 0
# - then determine if triangle is equilateral, isosceles or scalene 

# # I/O

# - input: integers
# - output: symbol

# # Logic

# - put three numbers in an array, then sort the array
# - check that first value in array is greater than sum of other two
# - check that all values greater than 0, return false if not
# - use case/when to return a symbol based on logical interpretation
#   of triangle rules

# # Methods

# array#sort
# array#any
# array#uniq
  
# # Code

require 'pry'

def triangle(num1, num2, num3)
  arr = [num1, num2, num3].sort { |x, y| y <=> x }
  if (arr[0] >= (arr[1] + arr[2]))
    return :invalid
  elsif arr.any? { |x| x < 0 }
    return :invalid
  end
  case arr.uniq.length
  when 1
    return :equilateral
  when 2
    return :isosceles
  when 3
    return :scalene
  end
end

# Tests

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
