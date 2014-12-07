module LeetCode
  # Stack-level implementation of finding the minimum value in a stack
  class Stack
    def get_min
      holder_stack = LeetCode::Stack.new
      min = top
      size.times do |i|
        holder_stack.push value = pop
        min = value if value < min
      end
      holder_stack.size.times { push holder_stack.pop }
      min
    end
  end
end
