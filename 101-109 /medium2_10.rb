# # Problem

# - difference between square of sum of first n integers
# - and sum of square of first n integers

# # I/O

# input: integer
# output: integer

# # Logic

# - initialise two values, sum of squares, square of sum, at zero
# - iterate through range from zero to input number
# - add square of value to sum of squares
# - add value to square of sum
# - square square of sum
# - return difference between sum of squares and square of sum

# # Methods

# integer#upto

# # Code

def sum_square_difference(int)
  sum_of_squares = 0
  square_of_sum = 0
  1.upto(int) do |i|
    sum_of_squares += (i ** 2)
    square_of_sum += i
  end
  square_of_sum**2 - sum_of_squares
end
# Tests

puts sum_square_difference(3) == 22
  # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150