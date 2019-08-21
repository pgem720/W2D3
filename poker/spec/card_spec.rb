require 'card.rb'
require 'rspec'

describe 'Card' do
  subject(:card) {Card.new(4, :spade)}

  describe '#initialize' do
    it 'has a value' do
      expect(card.value).to eq(4)
    end

    it 'has a suit' do
      expect(card.suit).to eq(:spade)
    end

  end




end

