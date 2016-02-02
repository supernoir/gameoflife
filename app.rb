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
            print $cells[a][b]
            print " "
            b += 1
        end
        print "\n"   
        a += 1
        end
    end
    

    
    def self.rule0
        x = 0
        while x < 10 do
            y = 0
            while y < 10 do
                if $cells[x][y] == 1
                    $cells[x][y] = 0
                    print $cells[x][y]
                    print " "
                else
                    $cells[x][y] = 1
                    print $cells[x][y]
                    print " "            
                end
            y += 1
            end
        print "\n"       
        x += 1
        end    
    end


    def self.rule1
        # Any live cells with fewer than 2 live neighbors will be dead
        
        #This would have 8 neighbors
        # C: if cell[1][1].neighbors (-1/+1/...) == 0   => cell[1][1] = dead
        # D: if the sum of cell[1][1].neighbors < 2     => cell[1][1] = dead 
        
        
        # In a grid of 3 * 3
        # currentRow[4] (cell)
        #currentRow[3] to the left
        # currentRow[5] to the right
        
        # previousRow[0] diagonal to the left
        # previousRow[1] above
        # previousRow[2] diagonal to the right
        
        # nextRow[6] diagonal to the left
        # nextRow[7] below
        # nextRow[8] diagonal to the right
        
    end
    

Board.new
Game.new
Game.printBoard
puts "- " * 10
Game.rule1



