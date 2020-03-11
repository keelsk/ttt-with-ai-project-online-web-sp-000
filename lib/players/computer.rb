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
      elsif board.turn_count > 3
        array = ["2", "4", "6", "8"]
        move = array.sample
      end
      move
    end
  end
end