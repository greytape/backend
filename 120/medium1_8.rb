require 'pry'

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

first = Card.new('Ace', 'Spades')
second = Card.new(4, 'Hearts')
third = Card.new(8, 'Clubs')
fourth = Card.new('Jack', 'Diamonds')
fifth = Card.new('Jack', 'Hearts')

# puts second.ranking

arr = [first, second, third, fourth, fifth]
puts arr.max