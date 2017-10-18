# # Code

class GuessingGame

  def initialize(low_value, high_value)
    @guess_range = (low_value..high_value)
    @number_of_guesses_remaining = Math.log2(guess_range.size).to_i + 1
    @correct_number = guess_range.to_a.sample
    @current_guess = nil
    @player_wins = false
  end

  def play 
    loop do 
      display_remaining_guesses
      puts "Enter a number between #{guess_range.min} and #{guess_range.max}."
      obtain_guess
      evaluate_guess
      break if player_wins || number_of_guesses_remaining == 0
    end
    puts player_wins ? "You win!" : "You are out of guesses. You lose."
  end

  private 

  attr_accessor :number_of_guesses_remaining, :correct_number, :current_guess, :player_wins, :guess_range

  def display_remaining_guesses
    puts "You have #{number_of_guesses_remaining} guesses remaining."
  end

  def obtain_guess
    loop do 
      self.current_guess = gets.chomp.to_i
      break if current_guess.to_s.to_i == current_guess
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

GuessingGame.new(100000,200000).play
