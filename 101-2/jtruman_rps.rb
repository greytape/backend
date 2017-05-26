# Very impressed with this version of RPS by jtruman88. 
# Run it on my machine to see what it's like.

require 'yaml'

MESSAGES = YAML.load_file('jtruman_rps_messages.yml')
VALID_CHOICES_FULL = %w(rock paper scissors lizard spock)
VALID_CHOICES_SHORT = %w(r p sc l sp)
TRUMPS = {
  'rock' => %w(scissors lizard),
  'paper' => %w(rock spock),
  'scissors' => %w(paper lizard),
  'lizard' => %w(spock paper),
  'spock' => %w(scissors rock)
}

def prompt(message)
  puts "-- #{message}"
end

def win?(first, second)
  TRUMPS[first].include?(second)
end

def display_round_results(player, computer)
  if win?(player, computer)
    prompt(MESSAGES["round_win"])
  elsif win?(computer, player)
    prompt(MESSAGES["round_loss"])
  else
    prompt(MESSAGES["round_tie"])
  end
end

# Introduction
4.times { |count| prompt(MESSAGES["welcome#{count}"]) }
puts

# Main Game Loop
loop do
  player_score = 0
  computer_score = 0
  # "Round" game loop
  loop do
    prompt("Choose one: #{VALID_CHOICES_FULL.join(', ')} >> ")
    # Displays shorthand to full-name legend
    VALID_CHOICES_FULL.each_with_index do |tool, index|
      print "#{VALID_CHOICES_SHORT[index]} = #{tool}  "
    end
    puts

    player_choice = gets.chomp.downcase
    # Validate input - can be full-name or shorthand
    until VALID_CHOICES_FULL.include?(player_choice) ||
          VALID_CHOICES_SHORT.include?(player_choice)
      prompt(MESSAGES["invalid_choice"])
      player_choice = gets.chomp.downcase
    end
    # Converts back to full-name if shorthand was used
    if player_choice.length <= 2
      player_choice = VALID_CHOICES_FULL.detect do |word|
        word.start_with?(player_choice)
      end
    end

    computer_choice = VALID_CHOICES_FULL.sample

    prompt("You chose: #{player_choice}")
    prompt("Computer chose: #{computer_choice}")

    # Increment scores & display finisher
    if win?(player_choice, computer_choice)
      player_score += 1
      prompt("#{MESSAGES['finishers'][[player_choice, computer_choice]]}!")
    elsif win?(computer_choice, player_choice)
      computer_score += 1
      prompt("#{MESSAGES['finishers'][[computer_choice, player_choice]]}!")
    end

    display_round_results(player_choice, computer_choice)
    prompt("The score is: You: #{player_score}, Computer: #{computer_score}")

    if player_score >= 5
      prompt(MESSAGES["game_win"])
      break
    elsif computer_score >= 5
      prompt(MESSAGES["game_loss"])
      break
    end
  end

  prompt(MESSAGES["again"])
  answer = gets.chomp.downcase
  until answer == 'y' || answer == 'n'
    prompt(MESSAGES["invalid_again"])
    answer = gets.chomp.downcase
  end
  break if answer == 'n'
end

prompt(MESSAGES["goodbye"])