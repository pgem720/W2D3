# require 'Comparable'

class Card
  # include Comparable
  attr_reader :value, :suit

  SUITS = {spade: 4, heart: 3, diamond: 2, clover: 1}

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def <=>(other_card)
    if (value <=> other_card.value) == 0
      return SUITS[suit] <=> SUITS[other_card.suit]
    else
      return value <=> other_card.value
    end
  end

end