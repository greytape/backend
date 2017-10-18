# Approach

# - output: string
# - input: integer

# 1. 
# - right, i made a pigs ear of the last one
# - this was because I assumed that we needed to know the size of the integer
# - to determine the size of the divisor
# - this was so I could isolate the divisor from the remainder (4,321)
# - actually it can be done the other way round (432,1) just by dividing by 10
# - so let's rewrite to incorporate this finding
# - i also found there's a cool method called divmod, that does int#/ and int#% 

# - take the integer, divmod it
# - store the remainder in an array. prepend so it fills up from the front
# - create array of strings, referred to by index
# - add strings to string to create result

# - can all be done in one method

# 2. 

# - so this is all going fine, but it seems that divmod reacts differently 
# - than you might expect with negative numbers.


# Code

require 'pry'

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(intgr)
  negative = (intgr < 0)
  str = ''
  if negative
    loop do
      intgr, result = intgr.divmod(10)
      unless result == 0 
        result = 10 - result
        intgr += 1
      end
      str.prepend(DIGITS[result])
      break if intgr == 0
    end
  else
    loop do
      intgr, result = intgr.divmod(10)
      str.prepend(DIGITS[result])
      break if intgr == 0
    end
  end
  return str if str == '0'
  negative ? '-' + str : '+' + str
end


# Results

p integer_to_string(8574)
