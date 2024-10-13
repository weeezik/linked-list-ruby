require_relative 'node'

class LinkedList

  def initialize
    @tail = Node.new("tail", nil)
    @head = Node.new("head", @tail.value)
  end

  def append value
    # @all_nodes = 

    # @prev_node  = for nodes in @all_nodes
    #   return nodes where node.next_node == @tail.value
    # end

    @append_node = Node.new(value, @tail.value)
    @head.next_node = @append_node.value
  end

  def prepend value
    @prepend_node = Node.new(value, @tail.value)
    @head.next_node = @prepend_node.value
  end

end

linkedlist = LinkedList.new
puts linkedlist.instance_variable_get(:@head).value