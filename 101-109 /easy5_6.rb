# Letter Counter (Part 1)

# # Problem Description

# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

#Inputs/Outputs

# - input: string
# - output: hash

#Logic

# - split up strings on spaces into an array
# - create empty hash
# - iterate through array, calculate size of each string element
# - create key value pair in hash, with element_size as key and 1 as value
# - if key already exists, add one to value
# - return hash

# Code 

def word_sizes(txt)
    arr = txt.split
    hsh = {}
    arr.each do |e|
        hsh.has_key?(e.size) ? hsh[e.size] += 1 : hsh[e.size] = 1
    end
    hsh
end

# Examples

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
