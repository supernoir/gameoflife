class Grid
   attr_accessor :width, :height

   def initialize(width = 10, height = 10)
      self.width = width
      self.height = height
      @cells = Array.new(width) { Array.new(height, (false)) }
   end

   def randomize(x,y,live)
      live = [true, false].sample         
   end

   def set_cell(x, y, live = true)
      randomize(x,y,live)
      @cells[x][y] = live
   end


   def live?(x, y)
      if @cells[x][y]== true
         puts true
      else
         puts false
      end
   end


   def live_neighbors(a,b)
   count = 0
    
    if @cells[a-1][b] == true
        count += 1
    end
    
    if @cells[a+1][b] == true
        count += 1
    end
    
    if @cells[a][b-1] == true
        count += 1
    end
    
    if @cells[a][b+1] == true
        count += 1
    end
    
# add the rest of the conditions so that all sides are being checked
        
    puts count
    
   end


def rule_one
   # If cell == alive AND count < 2
   # => cell = dead

end

def rule_two
   # If cell == alive AND count == 2 || count == 3
   # => cell = alive
end

def rule_three
   # If cell == alive AND count > 3
   # => cell = dead
end

def rule_four
   # If cell == dead AND count == 3
   # => cell = alive
end




   def print_grid
      puts @cells.inspect
   end

end

grid = Grid.new(6,6)

grid.set_cell(1,2)
grid.set_cell(1,0)
grid.set_cell(1,1)
grid.set_cell(0,0)
grid.set_cell(3,1)
grid.set_cell(2,2)
grid.print_grid
grid.live?(3,2)
grid.live?(1,2)
grid.live?(3,2)
grid.live?(2,2)
grid.live?(3,1)
grid.live?(2,2)


grid.live_neighbors(2,2)