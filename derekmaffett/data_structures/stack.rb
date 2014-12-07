module LeetCode
  class Stack
    def initialize(*args)
      @stack = LeetCode::DoubleList.new
      args.each { |arg| push arg }
    end

    def push(val)
      @stack.unshift val
    end

    def pop
      @stack.shift
    end

    def top
      @stack.head
    end

    def size
      @stack.size
    end
  end
end
