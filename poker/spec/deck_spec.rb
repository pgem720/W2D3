require 'deck.rb'
require 'rspec'

describe 'Deck' do
  subject(:deck_class) { Deck.new }
  let(:card) { double("card", value: 4) }

  describe '#initialize' do
    it 'Deck should have 52 cards' do
      expect(deck_class.deck.count).to eq(52)
    end
  end
end