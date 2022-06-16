require_relative 'piece.rb'
require_relative 'stepable.rb'

class Knight < Piece
include Stepable
    def symbol

    end

    def moves_diffs
        [[2,1],
        [2, -1],
        [-2, 1],
        [-2, -1],
        [1, 2],
        [-1, 2],
        [1, -2],
        [-1, -2]]
    end

end