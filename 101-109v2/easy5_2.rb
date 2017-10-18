# # Problem

# - write method that takes the total number of minutes before or after
#   midnight as an input and produces the current time in 24hr clock 
#   notation


# # I/O

# input: integer 
# output: 

# # Logic

# - use divmod to determine hours and minutes after midnight 
# - for cases with more than 24 hours, divide hours by 24
# - time before midnight trickier

# # Methods 

# integer#divmod
# integer#%

# Code

def time_of_day(input_minutes)
  if input_minutes < 0
    results = input_minutes.divmod(60)
    hours, minutes = (24 + results[0]), results[1]
    hours = hours % 24
  else
    hours, minutes = input_minutes.divmod(60)
    hours = hours % 24
  end
  format("%02d:%02d",hours,minutes)
end

# Tests

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"