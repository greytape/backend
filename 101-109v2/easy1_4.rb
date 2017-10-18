# # Problem

# - write method that counts the number of times that a string appears
#   in an array
# - then returns a hash containing the strings as keys and the number
#   of occurences as values

# # I/O

# input: array (of strings)
# output: hash

# # Logic

# - initialise empty hash
# - iterate through array. if hash contains element, increment value by 1
# - if not, create new key value pair, with string as key and 1 as value
# - return hash

# # Methods

# array#each
# hash#include?

# # Code

def count_occurrences(array)
  number_of_occurrences = {}
  array.each do |element|
    if number_of_occurrences.include?(element)
      number_of_occurrences[element] += 1
    else
      number_of_occurrences[element] = 1
    end
  end
  number_of_occurrences
end

# Tests

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

puts count_occurrences(vehicles)
