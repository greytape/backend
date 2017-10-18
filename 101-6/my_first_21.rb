require 'pry'

# *** METHODS ***

def prompt(mssg)
  puts ">>>#{mssg}"
end

def initialise_deck
  dck = []
  (2..10).each { |card| 4.times { dck << card } }
  FACE_CARDS.each { |card| 4.times { dck << card } }
  dck.shuffle
end

def deal_cards(plyr_hnd, comp_hnd, dck)
  plyr_hnd = []
  comp_hnd = []
  2.times { plyr_hnd.push(dck.pop) }
  2.times { comp_hnd.push(dck.pop) }
  return plyr_hnd, comp_hnd
end

def calculate_score(hnd)
  score = 0
  hnd.each do |card|
    if card.is_a?(Integer)
      score += card
    elsif ['King', 'Queen', 'Jack'].include?(card)
      score += 10
    elsif card == 'Ace'
      score += 11
    end
  end

  hnd.select { |card| card == 'Ace' }.count.times do
    score -= 10 if score > BUST_AT
  end

  score
end

def bust?(scr)
  scr > BUST_AT
end

def player_turn(plyr_hnd, dck)
  input = ''
  loop do
    prompt("Would you like to 1) hit or 2) stay?")
    input = gets.chomp.to_i
    break if (1..2).cover?(input)
    prompt("Sorry, that's not a valid response.")
  end
  input == 1 ? hit(plyr_hnd, dck) : nil
end

def hit(hnd, dck)
  hnd.push(dck.pop)
  return hnd, dck
end

def show_cards(hnd, hidden)
  hand_size = hnd.size
  revealed_cards = ''
  if hidden
    (hand_size - 1).times do |num|
      revealed_cards << hnd[num].to_s + ', '
    end
    revealed_cards = revealed_cards[0..-3] + " and an unknown card."
  else
    hand_size.times do |num|
      revealed_cards << hnd[num].to_s + ', '
    end
    revealed_cards = revealed_cards[0..-3] + "."
  end
end

def computer_turn(comp_hnd, dck)
  comp_score = calculate_score(comp_hnd)
  if comp_score < HIT_UNTIL
    hit(comp_hnd, dck)
  end
end

# *** VALUES ***

FACE_CARDS = ['Ace', 'King', 'Queen', 'Jack']
BUST_AT = 21
HIT_UNTIL = 17
player_hand = []
computer_hand = []

# *** INSTRUCTIONS ***

loop do
  winner = nil

  deck = initialise_deck

  player_hand, computer_hand = deal_cards(player_hand, computer_hand, deck)
  player_score, computer_score  = calculate_score(player_hand), calculate_score(computer_hand) 

  loop do
    system 'clear'
    prompt("Dealer has: #{show_cards(computer_hand, true)}")
    prompt("Player has: #{show_cards(player_hand, false)}")
    player_score = calculate_score(player_hand)
    if bust?(player_score)
      prompt("You're bust!")
      winner = 'Computer'
      break
    end
    break unless player_turn(player_hand, deck)
  end

  loop do
    break if winner == 'Computer'
    computer_score = calculate_score(computer_hand)
    if bust?(computer_score)
      prompt("The dealer is bust!")
      winner = 'Player'
      break
    end
    break unless computer_turn(computer_hand, deck)
  end

  system 'clear'

  prompt("Dealer has: #{show_cards(computer_hand, false)}")
  prompt("Player has: #{show_cards(player_hand, false)}")

  prompt("Dealer Score: #{computer_score}")
  prompt("Player Score: #{player_score}")

  unless winner
    winner = 'Player' if player_score > computer_score
    winner = 'Computer' if computer_score > player_score
  end

  if winner == 'Computer'
    prompt("You lost! Would you like to play again? (y/n)")
  elsif winner == 'Player'
    prompt("You won! Would you like to play again? (y/n)")
  else
    prompt("It's a tie! Would you like to play again? (y/n)")
  end

  break unless gets.chomp.downcase.chars.first == 'y'
end
