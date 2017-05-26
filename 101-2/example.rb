hash = 

{
'rock' => ['lizard', 'scissors'], 
'paper' => ['rock', 'spock'],
'scissors' => ['paper', 'lizard'],
'lizard' => ['paper', 'spock'],
'spock' => ['rock', 'scissors'],
}

puts "enter player_choice"
player_choice = gets.chomp
puts "enter computer_choice"
computer_choice = gets.chomp

if hash[player_choice].include?(computer_choice)
  puts "You win!"
elsif hash[computer_choice].include?(player_choice)
  puts "Computer wins!"
else 
  puts "Tie game! Everybody wins!"
end