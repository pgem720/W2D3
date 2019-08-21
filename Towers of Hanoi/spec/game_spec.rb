require 'game.rb'
require 'rspec'

describe 'game' do

  subject(:game) {Game.new}

  describe '#initialize' do
    expect(game.board).to eq([[1, 2, 3], [], []])
  end

  describe '#move' do
    it 'should move one element at a time' do
      expect(game.move(0, 2)).to eq([[2, 3], [], [1]])
    end

    it 'should only move smaller pieces onto larger pieces' do
      game.move(0,2)
      expect {game.move(0,2)}.to raise_error("Invalid move")
    end

    it 'should only accept indices within bounds' do
      expect {game.move(0,3)}.to raise_error("Out of bounds")
    end
  end

end



