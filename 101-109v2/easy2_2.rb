# # Problem

# - write a program that asks for length and width of room in meters
#   then prints string containing area of room in square feet

# # I/O

# input: integers
# ouput: string

# # Logic

# - don't use method
# - ask for inputs (convert to integers)
# - set inputs to variables metre_width and metre_length 
# - create new variable metre_area (width times length)
# - create new variable feet_area (metre_area * 10.7639)
# - use string interpolation to reveal feet_area

# # Methods

# Kernel#gets
# string#to_i

# # Code

SQ_METRES_TO_SQ_FEET = 10.7639 

puts "Enter the length of the room in meters:"

metre_length = gets.chomp.to_f

puts "Enter the width of the room in meters:"

metre_width = gets.chomp.to_f

metre_area = metre_length * metre_width

feet_area = metre_area * SQ_METRES_TO_SQ_FEET

puts "The area of the room is #{metre_area} square meters (#{feet_area} square feet)"

# Tests


# >> Example Output
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

