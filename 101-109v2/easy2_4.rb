# # Problem

# - ask for age and desired retirement age
# - print out string containing current year, desired retirement year
#   and years to go until desired retirement year

# # I/O

# input: integer
# output: string (contianing integer)

# # Logic

# - get age and retirement_age, store as variable integers
# - obtain current year, store as variable
# - calculate retirement_year using current year, store as variable
# - calculate difference between these two years, store as variable
# - print string containing all these variables

# # Methods

# string#to_i
# Time.now.year

# # Code

puts "What is your age?"

age = gets.chomp.to_i

puts "At what age would you like to retire?"

retirement_age = gets.chomp.to_i

current_year = Time.now.year
years_to_retirement = retirement_age - age
retirement_year = current_year + years_to_retirement 

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_retirement} years of work to go!"

# Tests

# >> Example output
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!