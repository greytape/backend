# Approach

# input: integer
# output: string

# 1.
# - seems like we should be able to use base 60 and base 24 here
# - what should the initial value of our time variable be?
# - for minute values longer than a day (1440 minutes) we should probably
# - we should remove 1440 until they are less than 1440
# - start with 60, remove 90 

# 2.
# - forget all that just use divmod
# - if negative, different from positive
# - adding 70 gives us 10, subtracting 70 gives us 50

# 3. 
# - this works for minutes (which can never exceed 60 with divmod), but not 
# - for hours which can. So I put int#% at the end of the hours calc

# 4. 
# a)
# - at the end of the first trial run we see a few problems
# - we're not getting double character strings for single digit returns
# # - ('0' not '00')
# b)
# - and there's a trouble with using divmod for negative values

# 5. 
# - so the proposed solution had a few good ideas in it.
# - int#% the minutes to start with, this removes the problem of negative numbers


# First Code

# def time_of_day(mins)
#   neg = mins < 0 ? true : false
#   arr = neg ? (-1*mins).divmod(60) : mins.divmod(60)
#   if neg 
#     hours = 23
#     minutes = 60
#     real_hours = ((hours - arr[0]) % 24).to_s
#     real_minutes = (minutes - arr[1]).to_s
#   else
#     hours = 0
#     minutes = 0
#     real_hours = ((hours + arr[0]) % 24).to_s
#     real_minutes = (minutes + arr[1]).to_s
#   end
#   real_hours.prepend('0') if real_hours.size == 1 
#   real_minutes.prepend('0') if real_minutes.size == 1
#   time = "#{real_hours}:#{real_minutes}"
# end

# Refactored code after solution

MINUTES_PER_DAY = 1440

def time_of_day(mins)
  diff_mins = mins % MINUTES_PER_DAY
  hours, minutes = diff_mins.divmod(60)
  format('%02d:%02d', hours, minutes)
end

# Tests

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"