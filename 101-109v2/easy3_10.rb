# # Problem

# - write method that returns true if integer is a palindrome

# # I/O

# input: integer
# output: boolean

# # Logic

# - turn integer to string, test if it is same forward and backward

# # Methods

# integer#to_s
# string#reverse

# # Code

def palindromic_number?(integer)
  integer.to_s == integer.to_s.reverse
end

# Test

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
