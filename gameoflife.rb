class Grid
   attr_accessor :width, :height

   def initialize(width = 10, height = 10)
      self.width = width
      self.height = height
      @cells = Array.new(width) { Array.new(height, (false)) }
   end

   def set_cell(x, y, live = true)
      live = [true, false].sample
      @cells[x][y] = live
   end

   def live?(x, y)
      if @cells[x][y]== true
         puts true
      else
         puts false
   end
end


def print_grid
puts @cells.inspect
end


grid = Grid.new(4,3)

grid.set_cell(1,2)
grid.set_cell(1,0)
grid.set_cell(1,1)
grid.set_cell(0,0)
grid.set_cell(3,1)
grid.set_cell(2,2)
grid.print_grid
grid.live?(0,0)
grid.live?(1,2)
grid.live?(1,0)
grid.live?(1,1)
grid.live?(3,1)
grid.live?(2,2)
