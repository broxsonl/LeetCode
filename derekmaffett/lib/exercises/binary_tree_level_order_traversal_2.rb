module LeetCode
  # Implements the solution for reverse order level traversal using
  # the code from Maximum Depth of Binary Tree.
  class BinaryTree
    def reverse_order_level_traversal
      levels.reverse.map(&:to_a)
    end
  end
end
