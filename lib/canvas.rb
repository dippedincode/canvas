class Canvas
  attr_accessor :canvas_array
  attr_reader :rows
  attr_reader :columns

  def initialize(rows, columns)
    @canvas_array = Array.new(columns){Array.new(rows,'O')}
    @rows = rows
    @columns = columns
  end

end