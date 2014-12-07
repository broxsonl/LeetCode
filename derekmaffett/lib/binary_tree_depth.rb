require_relative '../data_structures/queue'

module LeetCode
  # Adds #max_depth to the BinaryTree class. This algorithm does a breadth-first
  # search while tracking the levels throughout
  class BinaryTree
    class Level
      def initialize
        @contents = []
      end

      def push(tree)
        @contents << tree
      end
    end

    def levels
      queue = LeetCode::Queue.new(self)
      levels = []

      until queue.empty?
        level = Level.new
        level_size = queue.size
        level_size.times do |i|
          level.push element = queue.dequeue
          element.children.each_value { |child| queue.enqueue child }
        end
        levels << level
      end

      levels
    end

    def max_depth
      levels.size
    end
  end
end
