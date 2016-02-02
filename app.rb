# Game of Life
# Dayana / Conny

require 'byebug'

class Board
    $cells = []
    10.times do
        column = []
    10.times do
        column.push(rand(2))
    end
    $cells.push(column)
end
    #puts @cells.inspect
end



class Game

  attr_accessor :cells
  
  def initialize
  #board = Board.new
  #@cells = cells
  end
  
  
  def self.printBoard
  
  a = 0
    while a < 10 do   
    b = 0
        while b < 10 do
            #debugger
            print $cells[a][b]
            print " "
            b += 1
        end
        print "\n"   
        a += 1
        end
    end

   
end
    

Board.new
Game.new
Game.printBoard



