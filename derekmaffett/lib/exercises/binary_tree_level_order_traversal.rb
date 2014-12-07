module LeetCode
  # Implements the solution to in order level traversal using the solution
  # from Maximum Depth of Binary Tree
  class BinaryTree
    def in_order_level_traversal
      levels.map(&:to_a)
    end
  end
end
