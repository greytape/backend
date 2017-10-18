# # Problem

# - Ask for six numbers, then repeat back those numbers to 
#   user and state whether the last appears amongst the first five

# # I/O

# input: integer
# output: string (containing integers)

# # Logic

# - store inputted integers in array
# - use if/else statement, checking whether final integer is in first five 

# # Methods 

# array#include?
# array#last

# # Code

array = []

puts "==> Enter the 1st number:"

array << gets.chomp.to_i

puts "==> Enter the 2nd number:"

array << gets.chomp.to_i

puts "==> Enter the 3rd number:"

array << gets.chomp.to_i

puts "==> Enter the 4th number:"

array << gets.chomp.to_i

puts "==> Enter the 5th number:"

array << gets.chomp.to_i

puts "==> Enter the last number:"

array << gets.chomp.to_i

if array[0..-2].include?(array.last)
  puts "The number #{array.last} appears in #{array}."
else array.include?(array.last)
  puts "The number #{array.last} doesn't appear in #{array}."
end

# Tests

# Example Output
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].