require 'rspec'
require 'tdd_projects'

describe "tdd_projects" do

  

  describe "#my_uniq" do
    subject(:array) {Array.new([1, 2, 1, 3, 3])}
    it 'Accepts an array' do
      expect(array).to be_an_instance_of(Array)
    end
  
    it 'Returns an array with no dupes' do
      expect(array.my_uniq).to eq([1, 2, 3])
    end

    it 'Returns the original order' do
      expect(array.my_uniq).to include(1, 2, 3)
    end

    it 'Should not modify original array' do
      original_arr = array
      array.my_uniq
      expect(array).to eq(array)
    end
  end

  describe '#two_sum' do
    subject(:array) {Array.new([-1, 0, 2, -2, 1])}
    it 'Should return a new array' do
      expect(array.two_sum).to be_an_instance_of(Array)
    end

    it 'Sort pairs by first element and second element' do
      sorted = array.two_sum.sort_by {|arr| [arr[0],arr[1]] }
      expect(array.two_sum).to eq(sorted) 
    end

    it 'Should return pairs of positions that sum to zero' do
      expect(array.two_sum).to eq([[0, 4], [2, 3]])
    end

  end

  describe '#my_transpose' do 
    subject(:array) {Array.new([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
    ])}

    it 'Should convert array between row-oriented and column-oriented' do
      expect(array.my_transpose).to eq([
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
        ])
    end
  end

  describe '#stock_picker' do
    subject(:array) {Array.new([100, 95, 115, 110, 90])}
    

    it 'Should not buy before it sells' do
      expect(array.stock_picker[0]).to be < array.stock_picker[1]
    end
    it 'Should return an array with the best buy/sell days' do
      expect(array.stock_picker).to eq([1,2])
    end
  end 

end



