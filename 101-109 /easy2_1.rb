puts 'What is your name?'

name = gets.chomp
name = 'Teddy' if name == ''
age = rand(20..200)

# Test cases

puts "#{name} is #{age} years old!"