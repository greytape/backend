VALID_CHOICES_FULL = ['rock', 'paper', 'scissors', 'lizard', 'spock']
VALID_CHOICES_SHORT = ['r', 'p', 'sc', 'l', 'sp']
computer_score = 0
player_score = 0

def prompt(message)
  puts ">>>#{message}"
end

def clear_screen
  system('clear') || system('cls')
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'lizard' && second == 'spock')
end

# Method prints out who won the round.
def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("You lost.")
  else
    prompt("It's a tie!")
  end
  prompt("")
end

# This method increments the score of the winner.
def update_score(player, computer, player_score, computer_score)
  if win?(player, computer)
    player_score += 1
  elsif win?(computer, player)
    computer_score += 1
  end
  return player_score, computer_score
end

clear_screen

prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock.")
prompt("Can you beat the computer? Winner is first to 5 points.")
prompt("")

# This overarching loop allows the player to play the game multiple times.
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
    clear_screen
    # Checks to see if input is valid.
    if VALID_CHOICES_FULL.include?(choice)
      break
    # If input is in short form, converts to long form.
    elsif VALID_CHOICES_SHORT.include?(choice)
      short_index = VALID_CHOICES_SHORT.each_index.select do |i|
        VALID_CHOICES_SHORT[i] == choice
      end
      choice = VALID_CHOICES_FULL[short_index[0]]
      break
    else
      prompt("Invalid input.")
    end
  end

  # Randomly chooses a move for the computer.
  computer_choice = VALID_CHOICES_FULL.sample

  prompt("You chose #{choice}, computer chose #{computer_choice}.")
  prompt("")

  # Shows who won.
  display_results(choice, computer_choice)

  # Update the score.
  player_score, computer_score =
    update_score(choice, computer_choice, player_score, computer_score)

  prompt("Computer Score: #{computer_score}, Player Score:#{player_score}")
  if computer_score >= 5
    prompt("The Computer won! Bad luck. Thanks for playing!")
    break
  elsif player_score >= 5
    prompt("You won! Well done. Thanks for playing!")
    break
  end
end
