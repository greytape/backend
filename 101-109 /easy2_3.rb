# Approach

# - use string interpolation to display final results
# - store each input as a variable
# - store inputs as floats rounded to 2dp

# Code

puts "What is the bill?"

bill = gets.chomp.to_f

puts "What is the tip percentage?" 

tip_rate = gets.chomp.to_f / 100

tip = bill * tip_rate

total = bill + tip

puts "The tip is $#{tip.round(2)}"
puts "The total is $#{total.round(2)}"

# Tests

# 200 - 15 / The tip is $30.0 / The total is $230.0
