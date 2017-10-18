# # Problem

# - write program that reads text file and print longest sentence in the file
# - also print number of words in longest sentence
# - ends of sentences marked by '.', '!' or '?'

# # I/O

# input: string
# output: string (side effect)

# # Logic

# - store contents of text file in string
# - split string into array based on sentence ending characters
# - split each element of the array into a sub-array on whitespace
# - sort array by length, then store first element (longest) as new variable
# - also store length of longest array as new variable
# - join longest sentence together and return with length variable

# # Methods

# File#read
# string#split
# array#sort
# array#length
# array#join

# # Code

string = File.read('pg84.txt')
arr = string.split(/[.?!]/)
arr.map! {|e| e.split }
arr.sort! {|a, b| b.length <=> a.length }
longest_sentence = arr[0]
length_of_longest_sentence = longest_sentence.length
puts longest_sentence.join(' ')
puts length_of_longest_sentence

# Tests