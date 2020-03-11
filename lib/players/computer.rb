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
      end
    end
  end
end