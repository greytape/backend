# # Problem

# - method to take string and return same string with no consecutive
#   characters

# # I/O

# input: string
# output: string

# # Logic

# - turn string into array of characters
# - iterate through characters with index, select only those characters
#   which are not the same as the previous character
# - special case for first character (which should always be selected)

# # Methods

# string#chars
# array#select
# array#with_index

# Code

def crunch_simple(string)
  array = string.chars
  array.select.with_index do |character, index|
    if index == 0
      true
    elsif character == array[index - 1]
      false
    else
      true
    end
  end.join
end

# Tests

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''