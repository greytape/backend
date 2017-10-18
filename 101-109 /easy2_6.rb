# Approach

# - start with a range. I think there is a range#.to_a function.
# - use select function to strip out the even numbers
# - data output should be an array.

# Code

numbers = (1..99).to_a
numbers.select! { |num| num.odd? }
puts numbers

# Different approach 

# - use a while loop 
# - add numbers from a counter to an array if odd
# - determine oddness using integer#%

# Code

counter = 1
array = []

while counter <= 100
  array << counter if counter % 2 == 1
  counter +=1
end

puts array