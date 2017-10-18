# # Problem

# - convert positive integer to string representation of the integer

# # I/O

# input: inter
# output: string

# # Logic

# - initialise empty string
# - while num < 0
#   - num equals value divmod(10), last digit is remainder
#   - convert last digit to string with hash
#   - prepend last digit_string to new string

# # Methods

# integer#divmod
# hash#key
# string#prepend

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

def integer_to_string(integer, negative)
  string = ''
  if negative 
    loop do
      results = integer.divmod(10)
      integer, last_digit = (results[0] + 1), (10 - results[1])
      last_digit = CHARS_TO_INTS.key(last_digit)
      string.prepend(last_digit)
      break if integer == 0
    end
  else 
    while integer > 0 
      integer, last_digit = integer.divmod(10)
      last_digit = CHARS_TO_INTS.key(last_digit)
      string.prepend(last_digit)
      break if integer == 0
    end
  end
  string
end

def signed_integer_to_string(integer)
  return '0' if integer == 0
  integer < 0 ? negative = true : negative = false
  numstring = integer_to_string(integer, negative)
  negative ? '-' + numstring : '+' + numstring 
end

# Tests

puts signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'