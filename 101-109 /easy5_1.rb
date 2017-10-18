# Approach

# input: string
# output: integer

# 1.
# - need to look at each character of the string in turn and add it's ascii ascii_value
# - to a running total. Assuming that ' ' is counted as a character.

# - probably easiest to turn the string into an array with split
# - could either use each and add to a total variable, or map and then reduce

  # 2. 

  # - so this worked for all apart from the last case which was an empty string
  # - so i'll make an exception for empty string.

# Code

def ascii_value(txt)
  arr = txt.split('')
  total = arr.map { |char| char.ord }.reduce(0,:+)
end

# Tests

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0