require 'pry'
module Players
  class Computer < Player
    def move(board)
      move = nil
      if !(board.taken?(5))
        move = "5"
      elsif board.turn_count == 3
        array = ["1", "2", "3", "4", "6", "7", "8", "9"]
        move = array.sample
      end
    end
  end
end