# # Problem

# - replicate 'Integer' function without using it

# # I/O

# input: string
# output: integer

# # Logic

# - create hash of numeric characters to integers
# - initialise counter at 0
# - initialise string_length counter at 0
# - split string into array of numeric characters
# - iterate through array
#   - calculate string length
#   - remove first digit and store as variable
#   - get corresponding integer value from hash 
#   - multiply integer value by 10**string_length and add to counter
# - return counter

# # Methods

# string#chars
# array#each
# string#length
# array#shift

# Code

CHARS_TO_INTS = { '0'=>0, 
                  '1'=>1, 
                  '2'=>2, 
                  '3'=>3,
                  '4'=>4,
                  '5'=>5,
                  '6'=>6,
                  '7'=>7,
                  '8'=>8,
                  '9'=>9,
}

def string_to_integer(numstring)
  counter = 0
  array = numstring.chars
  array_length = array.length
  array_length.times do |char|
    current_array_length = array.length
    current_char = array.shift
    current_num = CHARS_TO_INTS[current_char]
    counter += current_num * ( 10 ** (current_array_length -1))
  end
  counter
end

# Tests

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570