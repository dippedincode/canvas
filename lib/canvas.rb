class Canvas
  attr_reader :canvas_array

  def initialize(rows, columns)
    @canvas_array = Array.new(columns){Array.new(rows,'O')}
  end

end