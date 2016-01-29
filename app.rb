# Game of Life
# Dayana / Conny


class Board

    @cells = []
    @cell = 0

10.times do
    column = []
    10.times do
        column.push(rand(2))
    end
    @cells.push(column)
end
# Outputting Cells Array
    puts @cells.inspect

end

class Game

    def printBoard
        10.times do
            10.times { print "A" + " " }
        print "\n"
    end


end
    
end

Board.new
Game.new



