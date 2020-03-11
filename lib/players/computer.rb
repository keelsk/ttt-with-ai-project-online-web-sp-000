require 'pry'
module Players
  class Computer < Player
    def move(board)
      move = nil
      if !(board.taken?(5))
        move = "5"
      elsif board.turn_count <= 3
        array = ["1", "3", "7", "9"]
        move = array.sample
      else
        board.cells.find_index
      end
      move
    end
  end
end