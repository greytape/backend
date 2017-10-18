# Approach

# - get measurements in metres
# - need to make sure measurements are stored as floats
# - store measurements in feet and metres
# - create method to calculate area

# Code

puts "Enter the length of the room in meters:"

length_m = gets.chomp.to_f

puts "Enter the width of the room in meters:"

width_m = gets.chomp.to_f

sqm_to_sqf = 10.7639

sq_m = length_m * width_m

sq_f = sq_m * sqm_to_sqf

# Test Cases

puts "The area of the room is #{sprintf("%.2f",sq_m)} square meters #{(sprintf("%.2f",sq_f)} square feet)."

