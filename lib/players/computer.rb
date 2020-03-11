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
        array = [1, 2, 3, 4,5, 6, 7, 8, 9]
        array.find_index do |x, index| 
          if !(board.taken?(index))
            move = "#{index}"
          end
        end
      end
      move
    end
  end
end