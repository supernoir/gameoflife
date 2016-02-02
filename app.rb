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
    

    
    def self.rule1
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
    
    
end
    

Board.new
Game.new
Game.printBoard
puts "- " * 10
Game.rule1



