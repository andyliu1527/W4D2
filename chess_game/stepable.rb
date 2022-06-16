module Stepable    
    def moves
        possible_moves = []
        moves_diffs.each do |array|
            dx, dy = array
            possible_moves += grow_unblocked_moves_in_dir(dx,dy)
        end
        possible_moves
    end

    def moves_diffs
        raise NotImplementedError
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        final_moves = []
        x, y = self.pos

        x = x + dx
        y = y + dy
        if (0..7).include?(x) && (0..7).include?(y)
            if @board[x,y].nil?
                final_moves << [x,y]
                x += dx
                y += dy
            elsif @board[x,y].color != self.color
                final_moves << [x,y]
            end
        end
        final_moves
    end




end