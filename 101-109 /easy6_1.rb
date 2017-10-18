# # I/O

# input: float
# output: string

# # Logic

# - initialise three variables: angles, minutes, degrees
# - assign the whole number to angles, and split the decimal between the others
# - multiply decimal by 60, assign whole number to minutes then take the decimal
# - multiply decimal by 60, round to whole number and assign to seconds
# - then print out the results as a string

# # Methods

# float#%
# float#round
# kernel#format

# # Code

DEGREE = "\x00\xB0"

def dms(flt)
  dgrs, mins = flt.divmod(1)
  mins *= 60
  mins, secs = mins.divmod(1)
  secs *= 60
  secs = secs.round
  format(%(#{dgrs}°%02d'%02d"), mins, secs)
end

# Tests

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")