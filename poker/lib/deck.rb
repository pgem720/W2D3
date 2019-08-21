require_relative "card.rb"

class Deck
  SUITS = {spade: 4, heart: 3, diamond: 2, clover: 1}
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]

  def initialize
    @deck = []
    SUITS.each_key do |suit|
      VALUES.each do |value|
        deck << Card.new(value, suit)
      end
    end
  end

  def shuffle_deck
    @deck.shuffle
  end


  attr_reader :deck
end