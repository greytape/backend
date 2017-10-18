# Approach

# input: integer
# output: string

# - there are a few key exceptions that I need to consider
# 1900 EXCEPTION
# - all integers can be handled through diving the number by 100 and adding 1
# - apart from years that end in 00, then there is no need to add the 1
# SUFFIX EXCEPTIONS
# - all strings should end with the suffix 'th', apart from centuries that end in 1,2 or 3
# 11TH-13TH CENTURY EXCEPTIONS
# - apart from 11th, 12th and 13th centuries, which do obey the 'th' rule
# Wow, I did this really badly. Should just have done century % 100 to get last 2 digits.

# Code

require 'pry'

def century(year)
  century = (year / 100) + 1
  if year % 100 == 0
    century = year / 100
  end
  suffix =  case century % 10
            when 1
              century.to_s.split('').last(2).join.to_i == 11 ? 'th' : 'st'
            when 2
              century.to_s.split('').last(2).join.to_i == 12  ? 'th' : 'nd'
            when 3
              century.to_s.split('').last(2).join.to_i == 13 ? 'th' : 'rd'
            else
              'th'
            end
  century.to_s + suffix
end

# Tests

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'