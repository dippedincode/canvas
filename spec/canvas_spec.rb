require 'canvas'

describe Canvas do

  it { is_expected.to respond_to :canvas_array }

  describe '#canvas_array' do
    it 'has initially all String values' do
      expect(subject.canvas_array).to all(be_a(Array))
    end
  end


end