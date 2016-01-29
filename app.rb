# Game of Life
# Dayana / Conny

require 'byebug'

class Board

    @cells = []
    10.times do
        column = []
    10.times do
        column.push(rand(2))
    end
    @cells.push(column)
end
    puts @cells.inspect
end



class Game

  attr_accessor :cells
  
  def initialize(board)
  @board = board
  @board.cells = cells
  end
  
    def self.printBoard # Ask Stefan why self.* here
        10.times do
            debugger
            10.times { print cells }
        print "\n"
        end
    end
    
   
end
    

Board.new

Game.new
Game.printBoard



