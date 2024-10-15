require_relative 'node'

class LinkedList

  def initialize
    @tail = Node.new("tail", nil)
    @head = Node.new("head", @tail.value)
  end

  def append value
    @append_node = Node.new(value, @tail.value)
    # @all_nodes = 

    # @prev_node  = for nodes in @all_nodes
    #   return nodes where node.next_node == @tail.value
    # end
    # binding.irb
   
    @head.next_node = @append_node.value
  end

end

linkedlist = LinkedList.new
# p linkedlist
# p linkedlist.instance_variable_get(:@head)
linkedlist.append(999)
p linkedlist
linkedlist.append("dog")
p linkedlist