# # Problem

# - write two methods, each should take as an input the time in 24h format
# - one should calculate number of minutes before midnight, the other
#   after

# # I/O

# input: string
# output: integer

# # Logic

# AFTER
# - need the first and second digits as inters, split string into array
# - initialise counter at 0
# - multiply first element in array (hours) by 60 and add to counter
# - add second element in array to counter

# # Methods

# string#split

# Code

def after_midnight(time)
  time_array = time.split(':').map {|e| e.to_i}
  counter = time_array[0] * 60
  counter += time_array[1]
  counter % 1440
end

def before_midnight(time)
  time_array = time.split(':').map {|e| e.to_i}
  (((23 - time_array[0]) * 60) + (60 - time_array[1])) % 1440
end

# Tests

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0