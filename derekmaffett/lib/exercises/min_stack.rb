module LeetCode
  # Different stack which implements a constant time #find_min method
  class MinStack < Stack
    def initialize(*args)
      @mins = Stack.new
      super
    end

    def push(val)
      fail ArgumentError unless val.is_a? Numeric
      @mins.push val if size == 0 || val <= @mins.top
      super
    end

    def pop
      @mins.pop if top == @mins.top
      super
    end

    def find_min
      @mins.top
    end
  end
end
