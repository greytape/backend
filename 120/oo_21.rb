
class Player



class Deck
  CARD_VALUES = %w(H D C S)
  CARD_SUITS = %w(1 2 3 4 5 6 7 8 9 10 J Q K A)

  def initialize
    @deck = []
    shuffle_deck
  end

  def shuffle_deck
    CARD_VALUES.each do |value|
    CARD_SUITS.each do |suit|
      self.deck << [value, suit]
    end
    self.deck.shuffle
  end
end


class TwentyOneGame

  attr_reader :deck

  def initialize
    deck = Deck.new
    human = Player.new
    computer = Player.new
  end

  def deal_cards_to_players
    deck.
  end

  def play
    p deck
  end

end

game = TwentyOneGame.new
game.play