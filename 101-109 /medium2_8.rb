# # Problem

# - featured number is odd, divisible by 7, and has non-repeating digits
# - return next featured number, when given any integer

# # I/O

# input: integer
# output: integer

# # Logic

# - create a separate method for determing whether a number is featured

# - featured method: 
# - check if number is odd, check if it is divisible by 7
# - turn into a string, then separate characters into an array
# - count number of unique characters in array, if equal to string length
#   then it passes this test
# - if pass all tests, return true, else return false

# - initialise counter at input number + 1
# - in a loop, test to see if counter is featured
# - if not, increment counter by 1
# - if so, return counter
# - break loop if counter is > 9,999,999,999

# # Methods

# integer#to_s
# string#chars
# array#uniq
# array#length
# string#length

# # Code

def featured_check(int)
  if int % 7 != 0 || int.even?
    return false
  elsif int.to_s.chars.uniq.length != int.to_s. length
   return false
  else
    true 
  end
end

def featured(int)
  count = int + 1
  loop do 
    break if featured_check(count)
    count += 1
    return "ERROR - NO HIGHER FEATURED NUMBER" if count > 9_999_999_999
  end
  count
end

# Tests

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

puts featured(9_999_999_999)