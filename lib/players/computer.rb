require 'pry'
module Players
  class Computer < Player
    def move(board)
      move = nil
      if !(board.taken?(5))
        move = "5"
      elsif board.taken?(1)
        array = ["2", "3", "4", "7"]
        move = array.sample
      elsif board.taken?(2)
        array = ["1", "3", "5", "8"]
        move = array.sample
      elsif board.taken?(3)
        array = ["1", "2", "5", "6", "8", "9"]
        move = array.sample
      end
    end
  end
end