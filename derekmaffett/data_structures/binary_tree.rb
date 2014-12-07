module LeetCode
  # A basic binary tree for use in algorithms
  class BinaryTree
    def initialize(val, left = nil, right = nil)
      @value = val
      @left = left
      @right = right
    end

    attr_reader :value, :left, :right

    def children
      children = {}
      children[:left] = @left if @left
      children[:right] = @right if @right
      children
    end
  end
end
