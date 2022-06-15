require_relative "piece.rb"
class Board

    def initialize
        @grid = Array.new(8) {Array.new(8)}
        (0...8).each do |i|
            if i == 0 || i == 1 || i == 6 || i == 7
                (0...8).each do |j|
                    @grid[i][j] = Piece.new()
                end
            end
        end
    end

    def move_piece(start_pos, end_pos)
        if self[start_pos].nil?
            raise error "no piece at position"
        else
            self[start_pos] , self[end_pos] = self[end_pos], self[start_pos]
        end
    end

    def [](pos)
        x,y = pos
        @grid[x][y]
    end

    def []=(pos, value)
        x,y = pos
        @grid[x][y] = value
    end
end