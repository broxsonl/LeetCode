RSpec.describe LeetCode::RevInt do
  describe '#reverse' do
    it 'should raise an error if a non-string is used' do
      expect { LeetCode::RevInt.reverse('string') }.to raise_error
    end

    it 'should return the same digit for a positive single digit integer' do
      expect(LeetCode::RevInt.reverse(1)).to eq 1
    end

    it 'should reverse a positive integer with multiple digits' do
      expect(LeetCode::RevInt.reverse(123)).to eq 321
    end

    it 'should return the same digit for a negative single digit integer' do
      expect(LeetCode::RevInt.reverse(-1)).to eq(-1)
    end

    it 'should reverse a positive integer with multiple digits' do
      expect(LeetCode::RevInt.reverse(-123)).to eq(-321)
    end

    it 'should cut off unnecessary zeros in the reversal of a positive int' do
      expect(LeetCode::RevInt.reverse(1000)).to eq 1
    end

    it 'should cut off unnecessary zeros in the reversal of a negative int' do
      expect(LeetCode::RevInt.reverse(-1000)).to eq(-1)
    end
  end
end
