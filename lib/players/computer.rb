require 'pry'
module Players
  class Computer < Player
    def move(board)
      move = nil
      if !(board.taken?(5))
        move = "5"
      elsif (board.turn_count < 3)
        corners = [1, 3, 7, 9]
        position = corners.find { |x| !(board.taken?(x))}
        move = position.to_s
      else
        until (!(board.taken?(move)))
          position = rand(1..9)
        end
        move = position.to_s
      end
      move
    end
  end
end