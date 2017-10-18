# Approach

# - hard code the current year.
# - calculate difference between current age and retirement age.
# - display difference.
# - display difference + current year

# Code

CURRENT_YEAR = Time.now.year

puts "What is your age?"
current_age = gets.chomp.to_i
puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i
years_until_retirement = retirement_age - current_age

puts "It's #{CURRENT_YEAR}. You will retire in #{CURRENT_YEAR + years_until_retirement}."
puts "You only have #{years_until_retirement} years of work to go!"

# Tests



# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!