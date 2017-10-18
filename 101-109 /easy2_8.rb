# Approach

# - use range#to_a
# - use if statement to determine either product or sum
# - use array#inject to calculate total

# Code

puts ">> Please enter an integer greater than 0."
integer = gets.chomp.to_i

array = (1..integer).to_a

puts ">> Enter 's' to compute the sum, 'p' to compute the product."

total = case gets.chomp.downcase
when 's'
  array.inject(:+)
when 'p'
  array.inject(:*)
end 

puts "The sum of the integers between 1 and #{integer} is #{total}."



