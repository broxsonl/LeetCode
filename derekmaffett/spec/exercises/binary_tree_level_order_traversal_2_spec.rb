RSpec.describe LeetCode::BinaryTree do
  describe '#reverse_order_level_traversal' do
    context 'with a depth of 1' do
      before(:each) do
        @tree = LeetCode::BinaryTree.new(7)
      end

      it 'should return a reverse traversal' do
        expect(@tree.reverse_order_level_traversal).to eq [[7]]
      end
    end

    context 'with a balanced tree of depth 2' do
      before(:each) do
        @tree = LeetCode::BinaryTree.new(
          7,
          LeetCode::BinaryTree.new(8),
          LeetCode::BinaryTree.new(32)
        )
      end

      it 'should return the correct traversal' do
        expect(@tree.reverse_order_level_traversal).to eq [[8, 32], [7]]
      end
    end

    context 'with an unbalanced tree of depth 5' do
      before(:each) do
        @tree = LeetCode::BinaryTree.new(
          1,
          LeetCode::BinaryTree.new(
            2,
            LeetCode::BinaryTree.new(
              3,
              LeetCode::BinaryTree.new(
                4,
                LeetCode::BinaryTree.new(5)
              )
            )
          )
        )
      end

      it 'should return the correct traversal' do
        expect(@tree.reverse_order_level_traversal).to eq(
          [
            [5], [4], [3], [2], [1]
          ]
        )
      end
    end

    context 'with the example from leetcode.com' do
      before(:each) do
        @tree = LeetCode::BinaryTree.new(
          3,
          LeetCode::BinaryTree.new(9),
          LeetCode::BinaryTree.new(
            20,
            LeetCode::BinaryTree.new(15),
            LeetCode::BinaryTree.new(7)
          )
        )
      end

      it 'should return the correct traversal' do
        expect(@tree.reverse_order_level_traversal).to eq(
          [
            [15, 7],
            [9, 20],
            [3]
          ]
        )
      end
    end
  end
end
