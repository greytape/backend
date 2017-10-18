# # Problem

# - ask for users name, repeat name back to them
# - if name ends with '!', reply with different string in all caps

# # I/O

# input: string
# output: string

# # Logic

# - ask for users name store as variable
# - use if/else structure to check final character of name
# - print replies accordingly if final character is '!'

# # Methods

# Kernel#gets
# string#[]
# string#upcase

# # Code

puts "What is your name?"

name = gets.chomp

if name[-1] == '!'
  puts "HELLO #{name[0..-2].upcase}. WHY ARE WE SCREAMING?"
else 
  puts "Hello #{name}."
end

# Tests

# >> Example Output
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?