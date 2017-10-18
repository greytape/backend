# Approach

# input: string
# output: integer

# - lets work on after midnight first, as I feel it will be easier.
# - so we need to get the integer of hours and minutes first
# - then we just need to multiply the hours by 60 and add the minutes to a total
# - before_midnight can then just use the after_midnight method
# - and subtract the result from 1440

# - so we should be using 
# - string#split
# - array#[]
# - string#to_i


# Code

require 'pry'

def after_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  hours_in_minutes = hours * 60
  minutes + hours_in_minutes % 1440
end

def before_midnight(time)
  diff = after_midnight(time)
  diff == 0 ? 0 : 1440 - diff
end

# Tests

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0