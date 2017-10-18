# # Problem 

# - write method that swaps first and last letter of every word in string
#   then returns that string

# # I/O

# input: string
# output: string

# # Logic

# - split string into array of words
# - iterate through array transforming words
#   - swap first and last character of string with simultaneous assignment
# - join array back to string 

# # Methods

# string#split
# array#map
# array#join

# Code

def swap(string)
  string.split.each{|e| e[0], e[-1] = e[-1], e[0]}.join(' ')
end

# Tests

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'