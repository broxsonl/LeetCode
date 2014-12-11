module LeetCode
  # Basic queue. It is essentially a wrapper for a doubly-linked list.
  class Queue
    def initialize(*args)
      @queue = LeetCode::SingleList.new
      args.each { |arg| enqueue arg }
    end

    def enqueue(val)
      @queue.push(val)
    end

    def dequeue
      @queue.shift
    end

    def peek
      @queue.head
    end

    def size
      @queue.size
    end

    def empty?
      @queue.size == 0
    end
  end
end
