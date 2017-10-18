# Write a function which takes in numbers num1 and num2 and returns 1 
# if there is a straight triple of a number at any place in num1 and 
# also a straight double of the same number in num2.

# If this isn't the case, return 0

# Approach

# - input: integer
# - output: integer

# - detect consecutive digits
# - use to_s
# - #split to turn in array
# - use each_with_index to compare current value against previous value
# - or condition

# Code 


def triple_double(num2)
  arr = num2.to_s.split('')
  num2_counter = 0
  arr.each_with_index do |char, index|
      next if index == 0 
      num2_counter += 1 if char == arr[index - 1]
  end
  num2_counter
end

#Tests

puts triple_double(121)
puts triple_double(12345)
puts triple_double(12999)
puts triple_double(22)

# p triple_double(451999277, 41177722899) == 1
# p triple_double(1222345, 12345) == 0
# p triple_double(12345, 12345) == 0
# p triple_double(666789, 12345667) == 1
# p triple_double(10560002, 100) == 1


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
