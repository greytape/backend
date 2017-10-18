# # Problem

# - method that takes string as argument and returns hash containing
#   three entries
# - number of uppercase, lowercase and neither characters in string

# # Logic

# - initialise new constant arrays of upper and lower case letters
# - initialise output hash with all values as 0 
# - convert string to array of characters
# - iterate through array
#   - if uppercase or lowercase arrays include element, increment the 
#     relevant value in hash
#   - if not, increment neither value in hash
# - return hash 

# # Methods

# string#chars
# array#each
# array#include

# Code

LOWERCASE_LETTERS = ('a'..'z').to_a
UPPERCASE_LETTERS = ('A'..'Z').to_a

def letter_case_count(string)
  hash = { lowercase: 0, uppercase: 0, neither: 0 }
  array = string.chars
  array.each do |e|
    if LOWERCASE_LETTERS.include?(e)
      hash[:lowercase] += 1
    elsif UPPERCASE_LETTERS.include?(e)
      hash[:uppercase] += 1 
    else
      hash[:neither] += 1
    end
  end
  hash
end

# Tests

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p 'letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p 'letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p 'letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }