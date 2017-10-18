# Approach 

# - set a variable if the final character is an '!'
# - use String#[] method to determine final character
# - use if statement to determine how final text is displayed.

# Code

puts "What is your name?"
name = gets.chomp
if name[-1] == '!'
  screaming = true
end

if screaming
  puts "HELLO #{name[0..-2].upcase}. WHY ARE WE SCREAMING?"
else 
  puts "Hello #{name}."
end

# Tests

