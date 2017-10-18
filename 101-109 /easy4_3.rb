# Approach

# 1.
# - if year is divisible by 4 then leap year, else not
# - unless year is also divisible by 100, then not a leap year
# - unless year is divisible by 400, then it is a leap year
# - let's just use if/else to start with 

# 2.
# So this works, but is very hard to read.
# I worked out from the tree that there are actually only 2 true conditions.
# Then i just returned true in these specific instances, everything else false.

# Code
  
# def leap_year?(yr)
#   if yr % 4 == 0 && yr % 100 != 0
#     return true
#   elsif yr % 4 == 0 && yr % 100 == 0 && yr % 400 == 0
#     return true
#   else 
#     return false
#   end
# end

# Further exploration

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

# Tests

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