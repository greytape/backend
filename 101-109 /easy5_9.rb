# I/O

# input: string
# output: string

# Logic

# - use squeeze

# Methods

# string#squeeze

# Code

def crunch(txt)
  txt.squeeze
end

# Tests

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''