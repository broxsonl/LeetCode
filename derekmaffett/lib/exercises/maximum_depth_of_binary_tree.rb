require_relative '../data_structures/queue'

module LeetCode
  # Adds #max_depth to the BinaryTree class. This algorithm does a breadth-first
  # search while tracking the levels throughout
  class BinaryTree
    # Levels are an additional layer of abstraction for gathering the relevant
    # trees during a breadth-first search.
    class Level
      def initialize
        @contents = []
      end

      def to_a
        @contents.map(&:value)
      end

      def push(tree)
        @contents << tree
      end
    end

    def levels
      queue = LeetCode::Queue.new(self)
      levels = []

      until queue.empty?
        levels << level = Level.new
        queue.size.times do
          level.push element = queue.dequeue
          element.children.each_value { |child| queue.enqueue child }
        end
      end

      levels
    end

    def max_depth
      levels.size
    end
  end
end
