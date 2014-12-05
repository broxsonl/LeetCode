# Design a stack that supports push, pop, top, and retrieving the minimum element
# in constant time.

# push(x) -- Push element x onto stack.
# pop() -- Removes the element on top of the stack.
# top() -- Get the top element.
# getMin() -- Retrieve the minimum element in the stack.

class Stack
  attr_reader :size

  def initialize
    @insides = []
    @size = 0
  end

  def push(x)
    @size += 1
    @insides.push(x)
  end

  def pop
    @size -= 1
    @insides.pop
  end

  def top
    @insides.last
  end

  def empty?
    @size == 0
  end
end

class MinStack
  attr_reader :size

  def initialize
    @contents, @minimums = Stack.new, Stack.new
  end

  def size
    @contents.size
  end

  def push(x)
    m = @minimums.top
    @contents.push(x)
    @minimums.push(m && x > m ? m : x) ### THE WHOLE TRICK IS HERE !!!
    self
  end

  def pop
    @minimums.pop
    @contents.pop
  end

  def top
    @contents.top
  end

  def getMin
    @minimums.top
  end
end
