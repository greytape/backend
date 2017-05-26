
VALID_CHOICES_FULL = ['rock', 'paper', 'scissors', 'lizard', 'spock']
VALID_CHOICES_SHORT = ['r', 'p', 'sc', 'l', 'sp']

loop do 
  choice = gets.chomp
  if VALID_CHOICES_FULL.include?(choice)
      break
  elsif VALID_CHOICES_SHORT.include?(choice)
    short_index = VALID_CHOICES_SHORT.each_index.select {|i| VALID_CHOICES_SHORT[i] == choice}
    choice = VALID_CHOICES_FULL[short_index[0]]
    puts choice
    break
  else
    puts("Invalid input.")
  end
end