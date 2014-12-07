RSpec.describe LeetCode::BinaryTree do
  describe '#reverse_level_traversal' do
    context 'with a depth of 1' do
      before(:each) do
        @tree = LeetCode::BinaryTree.new(7)
      end

      it 'should have one level' do
        expect(@tree.levels.size).to eq 1
      end

      it 'should return a reverse traversal' do
        expect(@tree.levels.to_a).to eq [[1]]
      end
    end
  end
end
