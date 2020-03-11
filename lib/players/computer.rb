require 'pry'
module Players
  class Computer < Player
    def move(board)
      move = nil
      if !(board.taken?(5))
        move = "5"
      elsif (board.turn_count < 3)
        corners = [1, 3, 7, 9]
        move = corners.find { |x| !(board.taken?(x))}
        move.to_s
      else
        array = rand(1..9)
        move = array.sample
      end
      move
    end
  end
end