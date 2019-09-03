require 'canvas'

describe Canvas do
  describe 'should contain a 2d array filled with Os' do 
    test_canvas = Canvas.new(5,6)
    
    describe '#canvas_array' do
      it 'initialized with all String values in all rows' do
        test_canvas.canvas_array.each do |item| 
          expect(item).to all(be_a(String))
        end
      end
    end

    describe '#canvas_array' do
      it 'initialized with O in every element' do
        test_canvas.canvas_array.each do |item| 
          item.each do |char|
          expect(char).to eql('O')
          end
        end
      end
    end
  end

end