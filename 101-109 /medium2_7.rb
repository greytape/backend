# # Problem

# - When given a year, reveal the number of Friday 13ths in that year

# # I/O

# input: integer
# output: integer

# # Logic

# - use time methods to check what day of the week the thirteenth of each month
#   in that year was
# - initialise a count variable at 0
# - iterate through a range of 1 to 12, for the month
# - if 13th was a friday, increment count by one
# - return count

# # Methods

# time#friday?

# # Code

def friday_13th(year)
  count = 0
  (1..12).each do |month|
    day = Time.local(year, month, 13)
    count += 1 if day.friday?
  end
  count
end

# Tests

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2
