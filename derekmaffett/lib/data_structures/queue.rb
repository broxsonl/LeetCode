module LeetCode
  # Basic queue. It has been altered to use a singly linked list instead of
  # a doubly linked list, saving us from having to use excess pointers.
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
