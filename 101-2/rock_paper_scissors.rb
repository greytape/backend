VALID_CHOICES = ['r', 'p', 'sc', 'l', 'sp']
computer_score = 0
player_score = 0

def prompt(message)
  puts ">>>#{message}"
end

def win?(first, second)
  (first == 'r' && second == 'sc') ||
    (first == 'r' && second == 'l') ||
    (first == 'p' && second == 'sp') ||
    (first == 'p' && second == 'r') ||
    (first == 'sc' && second == 'l') ||
    (first == 'sc' && second == 'p') ||
    (first == 'sp' && second == 'sc') ||
    (first == 'sp' && second == 'r') ||
    (first == 'l' && second == 'p') ||
    (first == 'l' && second == 'sp')
end

def display_results(player, computer, score1, score2)
  if win?(player, computer)
    prompt("You won!")
    score1 += 1
  elsif win?(computer, player)
    prompt("You lost.")
    score2 += 1 
  else prompt("It's a tie!")
  end
  return [score1, score2]
end

loop do
  choice = ''
  loop do
    prompt("Choose one:")
    prompt("'r' for rock")
    prompt("'p' for paper")
    prompt("'sc' for scissors")
    prompt("'l' for lizard")
    prompt("'sp' for spock")
    choice = Kernel.gets().chomp().downcase()
    if VALID_CHOICES.each {|word| word.include?(choice)}
      break
    else
      prompt("Invalid input.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}, computer chose #{computer_choice}.")

  [player_score, computer_score] = display_results(choice, computer_choice, player_score, computer_score)

  prompt("Computer Score: #{computer_score}, Player Score:#{player_score}")
  prompt("Would you like to play again? (Y to continue)")
  again = gets.chomp.downcase
  unless again[0] == 'y'
    prompt("Thanks for playing!")
    break
  end
end
