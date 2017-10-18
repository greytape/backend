# Approach

# - two different methods for if odd or even number of characters
# - if even characters (eg 4 'maam'), calculate length of string
# - copy first half of string to new string
# - copy second half of string to new string, then reverse it
# - check if new strings match, if so return true, else false
# - if odd characters (eg 5 'madam'), as above but copy first half + 1

# Code

def palindrome?(txt)
  txt == txt.reverse
end

# Tests

puts palindrome?([1,2,2,1]) == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true