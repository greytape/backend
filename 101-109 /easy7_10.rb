# # I/O

# input: string
# output: string

# # Logic

# - separate string into an array with each word as an element
# - return the penultimate element

# # Methods

# string#split
# array#[]

# # Code

def penultimate(str)
  str.split[-2]
end

# Tests

puts penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'