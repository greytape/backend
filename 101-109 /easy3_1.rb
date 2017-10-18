# Approach

# - add first 5 numbers to an array
# - use a while loop to note when we've reached the final number
# - use array#include? to check if the 6th number is in the array
# - set a variable to true/false depending if it is or not
# - use that variable to run true or false printing out final response (yes/no)

# Code

numbers = ['1st','2nd','3rd','4th','5th']
array = []

numbers.each do |num|
  puts "Enter the #{num} number."
  array << gets.chomp.to_i
end 

puts "Enter the last number."
final_num = gets.chomp.to_i

included = true if array.include?(final_num)

if included
  puts "The number #{final_num} appears in #{array}"
else 
  puts "The number #{final_num} does not appear in #{array}"
end