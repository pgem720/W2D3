class Game
  attr_accessor :board

  def initialize
    @board = [[1, 2, 3], [], []]
  end

  def move(start_pos, end_pos)
    current_pos = board[start_pos]
    final_pos = board[end_pos]

    if final_pos.nil?
      final_pos.unshift(current_pos.shift)
    elsif current_pos[0] > final_pos[0] 
      raise "Invalid move"
    end 

  end


end