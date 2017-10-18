# Approach

# - ask for input
# - need to get rid of spaces, could search using regex, but don't really know how
# - can get rid of spaces using split and then join
# - then just use string#length
# - print result using string interpolation

# Code

puts "Please write word or multiple words:"
words = gets.chomp

count = words.split.join('').length

puts "There are #{count} characters in '#{words}'."
