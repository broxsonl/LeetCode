module LeetCode
  # Implementation of a singly linked list
  class SingleList
    def initialize(*args)
      @head = nil
      @tail = nil
      @size = 0
      args.each { |arg| push arg }
    end

    attr_reader :size

    def head
      return nil unless @head
      @head.value
    end

    def tail
      return nil unless @tail
      @tail.value
    end

    def push(val)
      size == 0 ? unshift(val) : insert_after(val, @tail)
    end

    def unshift(val)
      new_node = Node.new(val)
      new_node.next = @head
      @head = new_node
      @tail = new_node if size == 0
      @size += 1
    end

    def shift
      remove_nth(1)
    end

    def remove_nth(n)
      return nil if n > size || n < 1

      if n == 1
        value = remove_head
      else
        value = remove_node_after(node = find_nth_node(n - 1))
        @tail = node if n == @size
      end

      @size -= 1
      @tail = @head = nil if @size == 0
      value
    end

    private

    def remove_node_after(node)
      value = node.next.value
      node.next = node.next.next
      value
    end

    def remove_head
      value = @head.value
      @head = @head.next
      value
    end

    def find_nth_node(n)
      return nil if n > size

      node = @head
      (n - 1).times { node = node.next }
      node
    end

    def insert_after(val, node)
      new_node = Node.new(val)
      new_node.next = node.next
      node.next = new_node
      @tail = new_node if node == @tail
      @size += 1
    end

    # Node for singly linked list
    class Node
      def initialize(value, nexxt = nil)
        @value = value
        @next = nexxt
      end

      attr_accessor :value, :next
    end
  end
end
