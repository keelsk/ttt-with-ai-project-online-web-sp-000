require 'pry'
module Players
  class Computer < Player
    def move(board)
      move = nil
      if !(board.taken?(5))
        move = "5"
      elsif board.turn_count == 3 || board.turn_count == 5
        array = ["1", "3", "7", "9"]
        move = array.sample
        
      else
        array 
        array.each do |index|
          board.taken?(index)
        end
      end
    end
  end
end