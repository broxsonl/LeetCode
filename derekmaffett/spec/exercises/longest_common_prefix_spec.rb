RSpec.describe LeetCode::StringComparator do
  describe '#common_prefix' do
    context 'a set with only one string' do
      before(:each) do
        @comparator = LeetCode::StringComparator.new('string')
      end

      it 'should return the full string' do
        expect(@comparator.common_prefix).to eq 'string'
      end
    end

    context 'a set with no common prefix' do
      before(:each) do
        @comparator = LeetCode::StringComparator.new('string', 'not')
      end

      it 'should return an empty string' do
        expect(@comparator.common_prefix).to eq ''
      end
    end

    context 'a set with a common prefix' do
      before(:each) do
        @comparator = LeetCode::StringComparator.new(
          'consumption',
          'contradictory',
          'conplicated',
          'constant'
        )
      end

      it 'should return an empty string' do
        expect(@comparator.common_prefix).to eq 'con'
      end
    end
  end
end
