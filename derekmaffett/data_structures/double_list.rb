class DoubleList
  class Node
    def initialize(val, nexxt, prev)
      @val = val
      @next = nexxt
      @prev = prev
    end

    attr_accessor :val, :next, :prev
  end

  def initialize(*args)
    @head = nil
    @tail = nil
    @size = 0
    args.each { |arg| unshift arg }
  end

  attr_reader :size

  def unshift(val)
    node = Node.new(val)
    node.next = @head
    @head = node
    @tail = node if size == 0
    @size += 1
  end

  def shift
    remove @head
  end

  def push(val)
    node = Node.new(val)
    node.prev = @tail
    @tail = node
    @head = node if size == 0
    @size += 1
  end

  def pop
    remove @tail
  end

  private

  def remove(node)
    node == @head ? @head = @head.next : node.prev.next = node.next
    node = @tail ? @tail = @tail.prev : node.next.prev = node.prev
  end
end
