class Deck
  
  attr_accessor :cards

  RANKS = (2..10).to_a + %w(Jack Queen King Ace).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    @cards = []
    generate_deck
  end

  def generate_deck
    RANKS.product(SUITS).each do |sub_array|
      cards << Card.new(sub_array[0], sub_array[1])
    end
  end

  def draw
    cards.pop
  end

end

class Card

  CARD_RANKINGS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "The #{rank} of #{suit}."
  end

  def ranking
    CARD_RANKINGS.find_index(rank)
  end 

  def <=>(other_card)
    self.ranking <=> other_card.ranking
  end

end

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
puts drawn.count { |card| card.rank == 5 } == 4
puts drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
puts drawn != drawn2 # Almost always.