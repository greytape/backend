# I/O

# input: integer
# output: integer

# # Logic

# - separate method to check if doublenumber
#   - convert integer to string
#   - if string length is odd return false
#   - otherwise split string in half
#   - using slice calculate midpoint of string using string length
#   - if first half equals second half return true, else false
# - if doublenumber, return input string
# - else return input string times 2

# # Methods
# integer#to_i
# string#length
# integer#odd?
# string#slice

# # Code

def doublenumber?(int)
  str = int.to_s
  half_string_length = ( str.size / 2 )
  if str.size.odd? || str.size == 0
    return false
  else
    first_half = str.slice(0,half_string_length)
    second_half = str.slice(half_string_length, half_string_length)
    first_half == second_half
  end
end

def twice(int)
  if doublenumber?(int)
    int
  else
    int * 2
  end
end

# Tests

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10