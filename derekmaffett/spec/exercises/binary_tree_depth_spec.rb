# Given a binary tree, find its maximum depth.

# The maximum depth is the number of nodes along
# the longest path from the root node down to the farthest leaf node.

require 'binary_tree_depth'

RSpec.describe 'binary tree depth' do
  describe 'solution' do
    context 'with a balanced tree of depth 1' do
      before(:each) do
        @tree = LeetCode::BinaryTree.new(7)
      end

      it 'should return a depth of 1' do
        expect(@tree.max_depth).to eq 1
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

      it 'should return a depth of 2' do
        expect(@tree.max_depth).to eq 2
      end
    end

    context 'with an unbalanced tree of depth 5' do
      before(:each) do
        @tree = LeetCode::BinaryTree.new(1,
          LeetCode::BinaryTree.new(2,
            LeetCode::BinaryTree.new(3,
              LeetCode::BinaryTree.new(4,
                LeetCode::BinaryTree.new(5)
              )
            )
          )
        )
      end

      it 'should return a depth of 5' do
        expect(@tree.max_depth).to eq 5
      end
    end
  end
end
