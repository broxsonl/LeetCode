RSpec.describe LeetCode::ZigZag do
  describe '#convert' do
    context 'an example string' do
      before(:each) do
        @zigzag = LeetCode::ZigZag.new('PAYPALISHIRING')
      end

      it 'should reject non-integer arguments' do
        expect { @zigzag.convert('hi') }.to raise_error ArgumentError
      end

      it 'should reject negative integers' do
        expect { @zigzag.convert(-2) }.to raise_error ArgumentError
      end

      it 'should return the appropriate string given one row' do
        expect(@zigzag.convert(1)).to eq 'PAYPALISHIRING'
      end

      it 'should return the appropriate string given two rows' do
        expect(@zigzag.convert(2)).to eq 'PYAIHRNAPLSIIG'
      end

      it 'should return the appropriate string given three rows' do
        expect(@zigzag.convert(3)).to eq 'PAHNAPLSIIGYIR'
      end

      it 'should return the appropriate string given 10 rows' do
        expect(@zigzag.convert(10)).to eq 'PAYPALGINSIHRI'
      end
    end
  end
end
