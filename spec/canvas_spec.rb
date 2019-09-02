require 'canvas'

describe Canvas do

  it { is_expected.to respond_to :canvas_array }

  describe '#canvas_array' do
    it 'has initially all String values in all rows' do
      subject.canvas_array.each do |item| 
        expect(item).to all(be_a(String))
      end
    end
  end


end