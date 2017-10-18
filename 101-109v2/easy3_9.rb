# # Problem

# - write method that decides whether a string is a palindrome
# - method should be case insensitive and ignore non-alphanumerics

# # I/O

# input: string
# ouput: boolean

# # Logic 

# - downcase input string
# - remove non-alphanumerics from string
#   - create array containing all alphanumerics
#   - turn string into array
#   - iterate through new array, selecting characters that are in array
#   - join string back together
# - put altered string into palindrome? method

# # Methods

# string#to_a
# string#chars
# string#downcase
# array#select
# array#include?
# array#join

# # Code

ALPHANUMERICS = ('a'..'z').to_a + ('0'..'9').to_a

def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  edited_array = string.downcase.chars.select { |e| ALPHANUMERICS.include?(e) }
  palindrome?(edited_array.join)
end

# Tests

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false