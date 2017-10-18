# # Problem

# - take string, calculate proportion of characters that are upcase
# - proportion that are downcsae, and proportion neither 
# - return these values in a hash, with the values given as % of total chars 

# # I/O

# input: string
# output: hash

# # Logic

# - store length of string as variable, convert to float.
# - split characters into array
# - count all upcase characters in array, store number as variable
# - count all downcase characters in array, store number as variable
# - store (string length - (upcase + downcase)) as a variable (other)
# - search for upcase/downcase using regex ([a-z],[A-Z])
# - divide each counter by length of string, times 100

# # Methods

# string#length
# string#chars
# array#each
# string#count

# # Code

def letter_percentages(str)
  string_length = str.length.to_f

  upcase_count = str.count('A-Z')
  downcase_count = str.count('a-z')
  other_count = string_length - (upcase_count + downcase_count)

  upcase_percent = (upcase_count / string_length) * 100
  downcase_percent = (downcase_count / string_length) * 100
  other_percent = (other_count / string_length) * 100
  
  {lowercase: downcase_percent, uppercase: upcase_percent, neither: other_percent}
end

# Tests

puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }