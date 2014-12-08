RSpec.describe LeetCode::StringConverter do
  describe '#to_i' do
    it 'should convert a single digit positive integer' do
      expect(LeetCode::StringConverter.new('3').to_i).to eq 3
    end

    it 'should convert a multiple digit positive integer' do
      expect(LeetCode::StringConverter.new('398234').to_i).to eq 398234
    end

    it 'should convert a multiple digit integer with zeros at the end' do
      expect(LeetCode::StringConverter.new('300').to_i).to eq 300
    end

    it 'should convert zero correctly' do
      expect(LeetCode::StringConverter.new('0').to_i).to eq 0
    end

    it 'should drop excess zeros' do
      expect(LeetCode::StringConverter.new('00300').to_i).to eq 300
    end

    it 'should convert a single digit negative integer' do
      expect(LeetCode::StringConverter.new('-3').to_i).to eq -3
    end

    it 'should convert a multiple digit positive integer' do
      expect(LeetCode::StringConverter.new('-742').to_i).to eq -742
    end

    it 'should convert an integer with non-numerical characters' do
      expect(LeetCode::StringConverter.new('(742)').to_i).to eq 742
    end

    it 'should convert a float to an int by ignoring post-decimal numbers' do
      expect(LeetCode::StringConverter.new('742.98').to_i).to eq 742
    end

    it 'should convert a number with multiple negative marks' do
      expect(LeetCode::StringConverter.new('--7').to_i).to eq 7
      expect(LeetCode::StringConverter.new('---7').to_i).to eq -7
    end

    it 'should convert a float to an int by ignoring post-decimal numbers' do
      expect(LeetCode::StringConverter.new('742.98').to_i).to eq 742
    end
  end
end
