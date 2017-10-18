# # Problem

# - write method to take string, and return string with words now 
#   in reverse order

# # I/O

# input: string
# output: string

# # Logic

# - split string into array 
# - reverse array
# - turn array into string
# - return array

# # Methods

# string#split
# array#reverse
# array#join

# # Code

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

# Tests

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'