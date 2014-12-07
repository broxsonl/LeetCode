module LeetCode
  class DoubleList
    class Node
      def initialize(val)
        @val = val
        @next = nil
        @prev = nil
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
      size == 0 ? @tail = node : node.next.prev = node
      @head = node
      @size += 1
    end

    def shift
      remove @head
    end

    def push(val)
      node = Node.new(val)
      node.prev = @tail
      node.prev.next = node
      @tail = node
      @head = node if size == 0
      @size += 1
    end

    def pop
      remove @tail
    end

    def tail
      return nil unless @tail
      @tail.val
    end

    def head
      return nil unless @head
      @head.val
    end

    private

    def remove(node)
      return nil if node.nil?
      node == @head ? @head = @head.next : node.prev.next = node.next
      node == @tail ? @tail = @tail.prev : node.next.prev = node.prev
      @size -= 1
      node.val
    end
  end
end
