require 'pry'
module Players
  class Computer < Player
    def move(board)
      move = nil
      if !(board.taken?(5))
        move = "5"
      elsif board.taken?(1)
        array = ["2", "3", "4", "7", "5", "9"]
        move = array.sample
      elsif board.taken?(2)
        array = ["1", "3", "5", "8"]
        move = array.sample
      elsif board.taken?(3)
        array = ["1", "2", "5", "6", "8", "9"]
        move = array.sample
      elsif board.taken?(4)
        array = ["1", "5", "6", "7"]
        move = array.sample
      elsif board.taken?(5)
        array = ["1", "3", "7", "9"]
        move = array.sample
      elsif board.taken?(6)
        array = ["3", "4", "5", "9"]
        move = array.sample
      elsif board.taken?(7)
        array = ["1", "3", "4", "5", "7", "8", "9"]
        move = array.sample
      elsif board.taken?(8)
        array = ["2", "5", "7", "9"]
        move = array.sample
      elsif board.taken?(9)
        array = ["1", "3", "5", "6", "7", "8"]
        move = array.sample
      else
        array = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
        move = array.sample
      end
      move
    end
  end
end