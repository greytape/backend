# # Problem

# - return century when given year

# # I/O

# input: integer
# output: string

# # Logic

# - divide number by 100 and add 1 to get century number
# - won't work for turn of century years, use divmod and conditional
#   on second value
# - concatenate ordinal text to century year
#   - use case statement on century year

# # Methods

# integer#div

# Code

def century(year)
  if year.divmod(100)[1] == 0
    century_year = (year.divmod(100)[0] ).to_s
  else
    century_year = (year.divmod(100)[0] + 1).to_s
  end
  if century_year[-2..-1] == '11' || century_year[-2..-1] == '12' || century_year[-2..-1] == '13'
    century_year + 'th'
  elsif century_year[-1] == '1'
    century_year + 'st'
  elsif century_year[-1] == '2'
    century_year + 'nd'
  elsif century_year[-1] == '3'
    century_year + 'rd'
  else
    century_year + 'th'
  end
end
# Tests

puts century(2000) #== '20th'
puts century(2001) #== '21st'
puts century(1965) #== '20th'
puts century(256) #== '3rd'
puts century(5) #== '1st'
puts century(10103) #== '102nd'
puts century(1052) #== '11th'
puts century(1127) #== '12th'
puts century(11201) #== '113th'