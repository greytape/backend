# # Problem 

# - create method that takes two expressions as inputs, and will return
#   true if one of them is true, but not if both are true

# # I/O

# input: (two) expressions
# output: boolean

# # Logic

# - if statement1 && statement2 are true, return false
# - else if statement1 || statement 2 are true, return true.

# # Methods

# none

# Code

def xor?(statement1, statement2)
  return false if statement1 && statement2
  statement1 || statement2
end

# Tests

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
