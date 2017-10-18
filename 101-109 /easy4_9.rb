# Approach

# - input: integer
# - output: string

# - use integer#/ and integer#% to get first value and remainder
# - will need to work out how long the integer is to know what to divide by
# - can then use 10 ^ intgr_size as divisor
# - probably use a dedicated method for this bit (maybe with recursion?)
# - then we'll get an array of numbers
# - use a hash again to convert individual digits to strings
# - then we iterate through these putting the elements as keys in a hash
# - then concatenate the values of the hash into a new string

# Code

INT_TO_STRINGS = {1=>'1',2=>'2',3=>'3',4=>'4',5=>'5',6=>'6',7=>'7',8=>'8',9=>'9',0=>'0'}

require 'pry'

def find_intgr_size(intgr)
  array = []
  counter = 1
  loop do
    array << counter 
    if intgr % counter == intgr
      array.pop
      break
    end
    counter *= 10
  end
  array
end

def integer_to_array(intgr)
  div_arr = find_intgr_size(intgr)
  new_array = []
  while div_arr.length > 0
    div = div_arr.pop
    new_array << intgr / div
    intgr = intgr % div
  end
  new_array
end

def integer_to_string(intgr)
  return '0' if intgr == 0
  arr = integer_to_array(intgr)
  result = ''
  while arr.length > 0
    result << INT_TO_STRINGS[arr.shift]
  end
  result
end

p integer_to_string(0)

# Tests

# puts integer_to_string(4321) == '4321'
# puts integer_to_string(0) == '0'
# puts integer_to_string(5000) == '5000' 
