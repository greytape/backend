# puts "the value of 40 + 2 is " + (40 + 2)
# ^^ This produces an error, because it is trying to add an integer to a string.
# Try string interpolation or 

puts "the value of 40 + 2 is #{40 + 2}"
puts "the value of 40 + 2 is " + (40 + 2).to_s