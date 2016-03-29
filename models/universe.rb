require './models/cell'

class Universe
  attr_accessor :rows, :columns, :table, :cells

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    @table = fill_table
    @cells = create_cells
  end

  private

  def fill_table
    Array.new(rows) { Array.new(columns, 0) }
  end

  def create_cells
    cells = []

    0.upto(rows - 1) do |i|
      0.upto(columns - 1) do |y|
        cells << Cell.new(i ,y)
      end
    end

    cells
  end
end
