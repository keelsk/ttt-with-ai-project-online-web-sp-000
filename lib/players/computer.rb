require 'pry'
module Players
  class Computer < Player
    def move(board)
      move = nil
      if !(board.taken?(5))
        move = "5"
      elsif !(board.taken?(1))
        move = "1"
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