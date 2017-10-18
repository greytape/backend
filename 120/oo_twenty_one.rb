require 'pry'

class Player
  attr_accessor :hand, :score, :deck, :player_type

  def initialize(player_type)
    @hand = []
    @player_type = player_type
    @score = 0
  end

  def calculate_score
    values = hand.map{ |card| card[1] }
    self.score = 0
    values.each do |value|
      if value == 'A'
        self.score += 11
      elsif value.to_i == 0
        self.score += 10
      else 
        self.score += value.to_i
      end
    end
    adjust_score_for_aces
  end

  def adjust_score_for_aces
    ace_counts = hand.count { |card| card[1] == 'A'}
    ace_counts.times do 
      if self.score > 21
        self.score -= 10
      end
    end
  end

  def display_card_values(hidden = false)
    values = []
    hand.each {|card| values << card[1] }
    if hidden 
      values.pop 
      values << 'and an unknown card'
    end
    values
  end

  def bust?
    score > 21
  end

  def score_under_17?
    score < 17
  end

  def twist?
    input = nil
    loop do
      puts "Would you like to stick or twist? (s/t)"
      input = gets.chomp.downcase[0]
      break if ['s','t'].include?(input)
      puts 'That is not a valid response.'
    end
    input == 't'
  end

  def to_s
    "The #{player_type.capitalize}"
  end
end

class Deck
  attr_accessor :cards

  CARD_SUITS = %w(H D C S)
  CARD_VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)

  def initialize
    @cards = CARD_SUITS.product(CARD_VALUES).shuffle
  end
end


class TwentyOneGame
  attr_accessor :deck, :human, :computer

  def initialize
    @deck = Deck.new
    @human = Player.new('human')
    @computer = Player.new('computer')
    @winner = nil
  end

  def initial_deal
    deal_cards(human, 2)
    deal_cards(computer, 2)
  end

  def test

  end

  def play
    display_welcome_message
    initial_deal
    loop do
      clear_screen
      human.calculate_score
      computer.calculate_score
      display_hands_and_player_score(true)
      if human.bust?
        puts "#{human} is bust!"
        puts ""
        break
      end
      break if !human.twist?
      deal_cards(human, 1)
    end
    loop do
      break unless computer.score_under_17?
      deal_cards(computer, 1)
      computer.calculate_score
      if computer.bust?
        puts "Computer is bust!"
        break
      end
    end
    display_hands_and_player_score(false)
    puts "The winner is #{detect_winner}."
  end

# *** GAME METHODS ***

  def display_welcome_message
    puts "Welcome to 21."
  end

  def detect_winner
    return human if human.score > computer.score && !human.bust? || computer.bust?
    computer
  end 
  
  def display_hands_and_player_score(hidden)
    if hidden
      puts "The computer has #{computer.display_card_values(hidden).join(', ')}. (#{computer.score})"
    else
      puts "The computer has #{computer.display_card_values(hidden).join(', ')}. (#{computer.score})"
    end
    puts "You have #{human.display_card_values.join(', ')}. (#{human.score})"
  end

  def clear_screen
    system 'clear'
  end

  def display_scores
    puts "You have #{human.score}."
    puts "The computer has #{computer.score}."
  end

  def deal_cards(player, times)
    times.times { player.hand << @deck.cards.shift }
  end

end

game = TwentyOneGame.new
game.play