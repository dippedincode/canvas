class Canvas
  attr_reader :canvas_array

  def initialize
    @canvas_array = Array.new(5){Array.new(5,'O')}
  end

end