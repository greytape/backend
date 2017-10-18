# # Problem

# - write method that determines whether string input is palindrome

# # I/O

# input: string
# output: boolean

# # Logic

# - determine string length and store as variable
# - use if else statement conditional on whether string length is odd
# - use string length to look at first half and last half of string
# - compare first and reversed last half

# # Methods

# string#length
# integer#odd
# string#reverse

# # Code

def palindrome?(string)
  string_length = string.length 
  if string_length.even?
    string[0..((string_length / 2) -1)] == string[(string_length / 2)..-1].reverse
  else
    string[0..(string_length / 2)] == string[(string_length / 2)..-1].reverse
  end
end

# Tests

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
