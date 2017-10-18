# # I/O

# input: string
# output: hash

# # Logic

# - use string#ord to work out the ascii value of the string
# - initialise an array with three keys, all values at 0
# - create ranges of the ascii values
# - uppercase : 65-90
# - lowercase : 97-122
# - split each string into an array of characters
# - iterate through each element in the array
# - if the ascii value of the element is in the upcase, or lowercase array (or neither)
# - add 1 to the relevant hash value.
# - return hash

# # Methods

# string#chars
# string#ord
# array#each

# # Code

UPPERCASE = 65..90
LOWERCASE = 97..122

def letter_case_count(str)
  arr = str.chars
  hsh = { lowercase: 0, uppercase: 0, neither: 0 }
  arr.each do |e|
    if UPPERCASE.include?(e.ord)
      hsh[:uppercase] += 1
    elsif LOWERCASE.include?(e.ord)
      hsh[:lowercase] += 1
    else
      hsh[:neither] += 1
    end
  end
  hsh
end


# Tests

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
