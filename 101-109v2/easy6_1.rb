# # Problem

# - method to take a float representing degrees, and return a string
#   representing the angle in degrees, minutes and seconds

# # I/O

# input: float
# output: string

# # Logic

# - initialise an empty array
# - divmod degrees by 1
# - set first two values of empty array to be result of divmod
# - multiply second value by 60
# - mod second value of array and multiply by 60 to make third value


# # Methods



# Code

DEGREE = "\x00\xB0"

def dms(degrees)
  dms_array = []
  dms_array[0], dms_array[1] = degrees.divmod(1)
  dms_array[1] *= 60
  dms_array[2] = (dms_array[1] % 1) * 60
  format(%(#{dms_array[0]}#{DEGREE}%02d'%02d"),dms_array[1], dms_array[2])

end

# Tests

p dms(30) #== %(30°00'00")
p dms(76.73) #== %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
