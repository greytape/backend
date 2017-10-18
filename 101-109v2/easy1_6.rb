# # Problem

# - write method that takes string as input and returns same string
# - however, all words within string with five characters or more 
#   must have letter order reversed

# # I/O

# input: string
# output: string

# # Logic

# - split string into array
# - transform array
#   - use if function to return reversed word if longer than 4 letters
# - turn array into string
# - return string

# # Methods

# string#split
# array#map
# string#length
# string#reverse
# array#join

# # Code

def reverse_words(string)
  string.split.map do |e|
    e.length >= 5 ? e.reverse : e
  end.join(' ')
end

# Tests

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS