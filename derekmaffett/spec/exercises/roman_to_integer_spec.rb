RSpec.describe LeetCode::RomanNumeral do
  describe '#to_i' do
    context 'single letter conversions' do
      it 'should convert I' do
        expect(LeetCode::RomanNumeral.new('I').to_i).to eq 1
      end

      it 'should convert V' do
        expect(LeetCode::RomanNumeral.new('V').to_i).to eq 5
      end

      it 'should convert X' do
        expect(LeetCode::RomanNumeral.new('X').to_i).to eq 10
      end

      it 'should convert L' do
        expect(LeetCode::RomanNumeral.new('L').to_i).to eq 50
      end

      it 'should convert C' do
        expect(LeetCode::RomanNumeral.new('C').to_i).to eq 100
      end

      it 'should convert D' do
        expect(LeetCode::RomanNumeral.new('D').to_i).to eq 500
      end

      it 'should convert M' do
        expect(LeetCode::RomanNumeral.new('M').to_i).to eq 1000
      end
    end

    context 'additive conversions' do
      it 'should convert III' do
        expect(LeetCode::RomanNumeral.new('III').to_i).to eq 3
      end

      it 'should convert VII' do
        expect(LeetCode::RomanNumeral.new('VII').to_i).to eq 7
      end

      it 'should convert LX' do
        expect(LeetCode::RomanNumeral.new('LX').to_i).to eq 60
      end

      it 'should convert MMDLXXII' do
        expect(LeetCode::RomanNumeral.new('MMDLXXII').to_i).to eq 2572
      end
    end

    context 'negative prefix conversions' do
      it 'should convert IV' do
        expect(LeetCode::RomanNumeral.new('IV').to_i).to eq 4
      end

      it 'should convert IX' do
        expect(LeetCode::RomanNumeral.new('IX').to_i).to eq 9
      end

      it 'should convert MXL' do
        expect(LeetCode::RomanNumeral.new('MXL').to_i).to eq 1040
      end

      it 'should convert MMMCDXLVII' do
        expect(LeetCode::RomanNumeral.new('MMMCDXLVII').to_i).to eq 3447
      end
    end
  end
end
