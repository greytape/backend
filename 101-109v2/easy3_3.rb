# # Problem

# - Prompt user for a string. Return number of characters in the string
#   not including any spaces

# # I/O

# input: string
# output: string (containing integer)

# # Logic 

# - prompt for string input
# - split the words up to remove spaces, join them back together
# - then measure the length of the resulting string and store variable 
# - return result with string interpolation

# # Methods

# string#split
# array#join
# string#length

# # Code

puts "Please write word or multiple words:"

string_input = gets.chomp

string_length = string_input.split.join.length

puts "There are #{string_length} characters in '#{string_input}'."

# Tests
