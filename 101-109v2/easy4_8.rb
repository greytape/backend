# # Problem

# - As previous problem, but if leading character of string is -, 
#   returned integer should be negative, if '+' should be positive
# - if no sign given, should be positive

# # I/O

# input: string
# output: integer 

# # Logic

# - check first value of string
#   - if negative, remove first value and put 
#     amended string into previous method and multiply return value by -1
#   - if positive, remove first value and put into previous method
#   - if a number, ignore and put return result from previous method

# # Methods

# string#chars
# array#first
# array#shift
# array#to_s

# # Code

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

def string_to_signed_integer(numstring)
  case numstring.chars.first
  when '-'
    numstring = numstring.chars
    numstring.shift
    amended_numstring = numstring.join
    string_to_integer(amended_numstring) * -1
  when '+'
    numstring = numstring.chars
    numstring.shift
    amended_numstring = numstring.join
    string_to_integer(amended_numstring)
  else
    string_to_integer(numstring)
  end
end

# Tests

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100