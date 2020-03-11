require 'pry'
module Players
  class Computer < Player
    def move(board)
      move = nil
      if !(board.taken?(5))
        move = "5"
      else
        corners = [1, 3, 7, 9]
        
        
        array = ["1","2","3","4","6","7","8","9"]
        move = array.sample
      end
      move
    end
  end
end