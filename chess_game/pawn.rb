require_relative 'piece.rb'

class Pawn < Piece
    WHITE_MOVE = [[-1,0],[-1,1], [-1,-1]]
    BLACK_MOVE = [[1,0], [1,1], [1,-1]]
    def symbol

    end

    def moves
        possible_moves = []
    end

    def at_start_row?
        if self.color == 'white' && self.pos[0] == 6 || self.color == 'black' && self.pos[0] == 1
            return true
        else
            return false
    end

    def forward_dir
        if self.color == 'white'
            return -1
        elsif
            self.color == 'black'
            return 1
        end
    end

    def forward_steps
        if self.color 
    end

    def side_attacks
        x, y = self.pos
        if !@board[x+1,y+1].nil?
            if @board[x+1, y+1].color != self.color
            end
        end
    end

    def enemy_diag?
        x,y = self.pos
        if @board[x-1, y+1].nil? ||
            if @board[x-1, y+1].color != self.color || @board[x-1, y-1].color != self.color


    end
end