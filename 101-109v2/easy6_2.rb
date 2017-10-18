# # Problem

# - take array of strings, return array of same strings, but with vowels
#   removed

# # Logic

# - iterate through each string in array, transforming them to removed
#   vowels

# # Methods

# array#map
# string#delete

# Code

def remove_vowels(array)
  array.map { |string| string.delete('aeiouAEIOU')}
end

# Tests

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

