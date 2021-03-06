module Slideable
    DIAGONAL_DIRS = [[1,1], [1, -1], [-1, 1], [-1, -1]].freeze
    HORIZONTAL_DIRS = [[0, 1], [0, -1], [1,0], [-1,0]].freeze

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        possible_moves = []
        moves_dirs.each do |array|
            dx, dy = array
            possible_moves += grow_unblocked_moves_in_dir(dx,dy)
        end
        possible_moves
    end

    def move_dirs
        raise NotImplementedError
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        final_moves = []
        x, y = self.pos

        x = x + dx
        y = y + dy
        while (0..7).include?(x) && (0..7).include?(y)
            if @board[x,y].nil?
                final_moves << [x,y]
                x += dx
                y += dy
            elsif @board[x,y].color != self.color
                final_moves << [x,y]
                break
            else
                break
            end
        end
        final_moves
    end

end
