module LeetCode
  class Queue
    def initialize(*args)
      @queue = LeetCode::DoubleList.new
      args.each { |arg| enqueue arg }
    end

    def enqueue(val)
      @queue.unshift(val)
    end

    def dequeue
      @queue.pop
    end

    def peek
      @queue.tail
    end

    def size
      @queue.size
    end

    def empty?
      @queue.size == 0
    end
  end
end
