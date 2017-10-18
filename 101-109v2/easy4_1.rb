# # Problem

# - take two strings, work out which one is longer
# - then concatenate them with the shorter one on the outside of three

# # I/O

# input: string
# output: string

# # Logic

# - calculate shortest and longest string and store as values
#   - use ternary
# - return strings concatenated as follows (short + long + short)

# # Methods

# string#length

# # Code

def short_long_short(string1, string2)
  short_string = string1.length <= string2.length ? string1 : string2 
  long_string = string1.length >= string2.length ? string1 : string2 
  short_string + long_string + short_string
end

# Tests

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"