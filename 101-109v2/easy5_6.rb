# # Problem

# - method that takes a string as input and returns a hash with values
#   as length of words in the string, and keys as number of words of 
#   that length

# # I/O

# input: string
# output: hash

# # Logic

# - initialise empty hash
# - split string into array of words
# - iterate through array
#   - if word.length already exists as key in hash, increment value
#   - if not, add word.length to hash as new key with value of 1
# - return hash

# # Methods 

# string#split
# array#each
# string#length
# hash#include

# Code 

def word_sizes(string)
  hash = {}
  string.split.each do |word|
    hash.include?(word.length) ? hash[word.length] += 1 : hash[word.length] = 1
  end
  hash
end

# Tests

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}