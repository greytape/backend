# # I/O

# input: strings (when prompted)
# output: string

# # Logic

# request four pieces of string input
# - store each piece of string input as a separate variable
# - use string interpolation to print out a sentence containing those variables


# # Methods

# kernel#gets
# kernel#chomp
# kernel#puts

# # Code

puts "Enter a noun:"
noun = gets.chomp

puts "Enter a verb:"
verb = gets.chomp

puts "Enter a adjective:"
adjective = gets.chomp

puts "Enter a adverb:"
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? How strange."

# Tests

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!