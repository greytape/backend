class PokerHand
  attr_reader :cards

  def initialize(deck)
    @cards = []
    5.times { @cards << deck.draw}
  end

  def print
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def royal_flush?(cards)
    if cards.map(&:suit).uniq.length == 1
      cards..sort == ['Ace', 'King', 'Queen', 'Jack', '10'].sort
    else
      false
    end
  end

  def straight_flush?
  if cards.map(&:suit).uniq.length == 1
    cards.sort.map(&:rank) == [10, 'Jack', 'Queen', 'King', 'Ace']
  else
    false
  end
  end

  def four_of_a_kind?
  end

  def full_house?
  end

  def flush?
  end

  def straight?
  end

  def three_of_a_kind?
  end

  def two_pair?
  end

  def pair?
  end
end

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
    cards.shuffle!
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
poker = PokerHand.new(deck)
puts poker.cards
puts poker.cards.map(&:suit).uniq.length