# Write a method that takes a number as an argument. If the argument is a
# positive number, return the negative of that number. If the number is 0 or
# negative, return the original number.

# Examples:

# Approach 

# - Tell whether num pos or neg using integer#>
# - Return using ternary

# Code

# def negative(num)
#   negative = true if num <= 0
#   negative ? num : -num
# end

# # Tests

# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0      # There's no such thing as -0 in ruby


# Write a method that takes an Array of numbers and then returns the sum of the
# sums of each leading subsequence for that Array. You may assume that the Array
# always contains at least one number.

# Approach

# - input: array
# - output: integer

# - iterate through the array using array#each_index 
# - select subsequence using array#[0..index]
# - add subsequence to running total 
# - return total

# Code

def sum_of_sums(arr)
  total = 0
  arr.each_index do |i|
    total += arr[0..i].inject(:+)
  end
  total
end

# Tests

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # => (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # => (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

# below is Dalton's answer

def sum_of_sums(arr)
  (0...arr.size).map do |index_limit|
    arr[0..index_limit].reduce(:+)
  end.reduce(:+)
end