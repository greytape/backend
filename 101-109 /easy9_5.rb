# # I/O

# input: string
# output: boolean

# # Logic

# - compare input string to upcased version of input string

# # Methods

# string#upcase

# # Code

def uppercase?(str)
  str == str.upcase
end

# Tests

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true