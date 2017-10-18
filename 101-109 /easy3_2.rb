# Approach

# - obtain two numbers, store them as variables
# - set the program to print the results of the different operations
# - use string interpolation

# Code

puts "Enter the first number."
first_num = gets.chomp.to_i

puts "Enter the second number."
second_num = gets.chomp.to_i

puts "#{first_num} + #{second_num} = #{first_num + second_num}"
puts "#{first_num} - #{second_num} = #{first_num - second_num}"
puts "#{first_num} * #{second_num} = #{first_num * second_num}"
puts "#{first_num} / #{second_num} = #{first_num / second_num}"
puts "#{first_num} % #{second_num} = #{first_num % second_num}"
puts "#{first_num} ** #{second_num} = #{first_num ** second_num}"
