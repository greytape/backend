# # Problem

# - method that takes string as argument and returns penultimate 
#   word in string

# # Logic

# - split string into array of words
# - return penultimate word using array index

# # Methods

# string#split
# array#[]

# Code

def penultimate(string)
  string.split[-2]
end

# Tests

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'