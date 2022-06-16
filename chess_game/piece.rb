require_relative "board.rb"
require_relative "slideable.rb"

class Piece
include Slideable
    def initialize(color =nil, board= nil, pos =nil)
        @color = color
        @board = board
        @pos = pos
    end

end