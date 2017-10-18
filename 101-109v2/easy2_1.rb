# # Problem

# - write program that randomly chooses an age between 20 and 200
#   then prints a sentence stating that fact

# # I/O

# n/a

# # Logic

# - don't create a method
# - use kernel#rand and string interpolation

# # Methods

# kernel#rand

# # Code

puts "What is the birthday boy's name?"
name = gets.chomp
name = 'Teddy' if name == ''


puts "#{name} is #{rand(20..200)} years old!"

# Tests

# example output => Teddy is 69 years old!