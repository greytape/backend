# # Problem

# - ask for bill and tip percentage, then print the resulting
#   tip and total 

# # I/O

# input: integer
# output: string (containing floats)

# # Logic

# - ask for bill and tip %, set both as float variables
# - set tip and total to variables using calculations
# - print results with string interpolation, with results rounded 
#   to 2 dp

# # Methods

# string#to_f
# float#round

# # Code

puts "What is the bill?" 

bill = gets.chomp.to_f

puts "What is the tip percentage?"

tip_percent = gets.chomp.to_f

tip = (bill * (tip_percent / 100)).round(2)
total = (tip + bill).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total}"

# Tests

# >> Example output
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0