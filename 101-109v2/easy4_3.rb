# # Problem

# - determine whether or not a year is a leap year
# - divisible by 4 == yes
# - divisible by 4 == no, unless divisible by 400 == yes

# # I/O

# input: integer
# output: boolean

# # Logic

# - use if/else statement, return true or false
# - test for 400 first

# # Methods 

# integer#%

# Code

def leap_year?(year)
  return true if year % 400 == 0
  return false if year % 100 == 0
  return true if year % 4 == 0
  false
end

# Tests

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true