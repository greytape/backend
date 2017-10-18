# I/O

# input: string
# output: string

# # Logic

# - calculate length of string
# - if length is even return two characters around midpoint
# - if string is odd, return middle character
# - eg string length 5 [0,1,2,3,4] 5 / 2 = 2 - returns correct character
# - eg string length 6 [0,1,2,3,4,5]  6 / 2 = 3 - returns correct character (+ 1 preceding)


# # Methods

# string#size
# string#[]

# # Code

def center_of(str)
  str_length = str.size
  middle_pos = str_length / 2
  str_length.odd? ? str[middle_pos] : str[((middle_pos - 1)..middle_pos)]  
end

# Tests

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'