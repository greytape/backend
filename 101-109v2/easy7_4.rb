# # Problem

# - method that takes string as argument and returns string with case
#   of every alphabetical character swapped 

# # Logic

# - initialise two constant arrays of upcase and downcase letters
# - turn string into array of characters
# - iterate through array
#   - if element is in UPPERCASE, downcase it
#   - if element is in LOWERCASE, upcase it
#   - else return element
# - return array joined together

# # Methods

# string#chars
# array#map
# array#include
# string#downcase
# string#upcase
# array#join

# Code

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def swapcase(string)
  string.chars.map do |e|
    if e=~ /[A-Z]/
      e.downcase
    elsif e=~ /[a-z]/
      e.upcase
    else
      e
    end
  end.join
end

# Tests

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'