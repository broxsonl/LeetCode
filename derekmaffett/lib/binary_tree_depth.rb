require_relative '../data_structures/queue'

module LeetCode
  # Adds #max_depth to the BinaryTree class. This algorithm does a breadth-first
  # search while tracking the levels throughout
  class BinaryTree
    def max_depth
      queue = LeetCode::Queue.new(self)
      depth = 0

      until queue.empty?
        depth += 1
        level_size = queue.size
        level_size.times do
          queue.dequeue.children.each_value { |child| queue.enqueue child }
        end
      end

      depth
    end
  end
end
