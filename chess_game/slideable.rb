# module Slideable
    DIAGONAL_DIRS = [[1,1], [1, -1], [-1, 1], [-1, -1]]
    HORIZONTAL_DIRS = [[0, 1], [0, -1], [1,0], [-1,0]] 

    def moves(start_pos)
        move_set = []
        DIAGONAL_DIRS.each do |move|
            x = move[0] + start_pos[0]
            y = move[1] + start_pos[1]

            while (0..7).include?(x) && (0..7).include?(y)
                move_set << [x, y ]
                x += move[0]
                y += move[1]
            end
        end


        HORIZONTAL_DIRS.each do |move|
            x = move[0] + start_pos[0]
            y = move[1] + start_pos[1]

            while (0..7).include?(x) && (0..7).include?(y)
                move_set << [x, y ]
                x += move[0]
                y += move[1]
            end
        end
        move_set
    end

instance_of?(Bishop)
DIAGONAL_DIRS
instance_of?(Queen)
DIAGONAL_DIRS + HORIZONTAL_DIRS
instance_of?(Rook)
HORIZONTAL_DIRS
# end