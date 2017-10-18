# # Problem

# - ask user to enter positive integer
# - ask user to choose whether sum or product of numbers up the chosen
#   number should be calculated
# - print result

# # I/O

# input: integer, string
# output: string (with integers)

# # Logic

# - store chosen integer as variable
# - store chosen calculation method as variable 
# - use if/else statement to calculate result, then store as variable
# - return result with string interpolation

# # Methods 

# string#to_i
#string#downcase

# # Code

puts ">> Please enter an integer greater than 0:"

integer = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."

chosen_operation = gets.chomp.downcase

result =  case chosen_operation
          when 's'
            (1..integer).reduce(&:+)
          when 'p'
            (1..integer).reduce(&:*)
          end

puts "The product of the integers between 1 and #{integer} is #{result}."

# Tests

# >> Example output
# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.
