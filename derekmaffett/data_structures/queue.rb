class Queue
  def initialize(*args)
    @queue = DoubleList.new(*args)
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
end
