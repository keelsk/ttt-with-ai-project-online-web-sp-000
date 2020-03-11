require 'pry'
module Players
  class Computer < Player
    def move(board)
      move = nil
      if !(board.taken?(5))
        move = "5"
      elsif board.cells.uniq.length 
        array = ["1", "3", "7", "9"]
        move = array.sample
      elsif !(board.taken?(3)
        move = "3"
      elsif !(board.taken?(7))
        move = "7"
      elsif !(board.taken?(9))
        move = "9"
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