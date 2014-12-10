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
  end
end
