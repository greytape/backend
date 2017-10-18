# # Problem

# - Number guessing game. Player must enter a number between 1 
# and 100. 
# - If she guesses lower or higher than the true number, 
# program should tell her.
# - Player has 7 guesses, wins if she accurately guesses.
# - Invalid guesses count as guesses.

# # Logic

# - Classes GAME
# - States NUMBER_OF_GUESSES_REMAINING, CORRECT_NUMBER, CURRENT_GUESS
# - Methods PLAY, GUESS, DISPLAY_REMAINING_GUESSES, RESPOND_TO_GUESS
# - Most methods should be private as interface with the game should 
#   only be through public play method.

# # Methods

# Kernel#gets.chomp
# String#to_i

# # Code

class GuessingGame

  def initialize
    @number_of_guesses_remaining = 7
    @correct_number = (rand * 100).to_i
    @current_guess = nil
    @player_wins = false
  end

  def play 
    loop do 
      display_remaining_guesses
      puts "Enter a number between 1 and 100."
      obtain_guess
      evaluate_guess
      break if player_wins || number_of_guesses_remaining == 0
    end
    puts player_wins ? "You win!" : "You are out of guesses. You lose."
  end

  private 

  attr_accessor :number_of_guesses_remaining, :correct_number, :current_guess, :player_wins

  def display_remaining_guesses
    puts "You have #{number_of_guesses_remaining} guesses remaining."
  end

  def obtain_guess
    loop do 
      self.current_guess = gets.chomp.to_i
      break if current_guess.to_s.to_i == @current_guess 
      puts "Invalid guess"
    end
    self.number_of_guesses_remaining = number_of_guesses_remaining - 1
  end

  def evaluate_guess
    if current_guess > correct_number
      puts "Your guess is too high."
    elsif current_guess < correct_number
      puts "Your guess is too low."
    elsif current_guess == correct_number
      self.player_wins = true
    end
  end

end

# Tests

GuessingGame.new.play
