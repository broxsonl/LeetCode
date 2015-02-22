# Given a binary tree, find its maximum depth.
# The maximum depth is the number of nodes along the longest path from the root
# node down to the farthest leaf node.

DepthSounder = Struct.new(:max, :depth) do
  def initialize
    self.max = self.depth = 0
  end

  def update_max
    self.max = self.depth if self.depth > self.max
  end

  def update_depth
    self.depth -= 1
  end
end

class Tree
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
  end

  def max_depth
    throw_over_board(DepthSounder.new).max
  end

  protected

  def throw_over_board(depth_sounder)
    depth_sounder.depth += 1

    if !@left && !@right
      depth_sounder.update_max
      return depth_sounder
    end

    [@left, @right].compact.each do |branch|
      depth_sounder = branch.throw_over_board(depth_sounder)
      depth_sounder.update_depth
    end

    return depth_sounder
  end
end
