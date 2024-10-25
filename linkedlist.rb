require_relative 'node'

class LinkedList

  def initialize
    @tail = Node.new("tail", nil)
    @head = Node.new("head", @tail)
  end

  def append value
    # While the current node's next node is not the tail node, set the current node
    # to the next node in the list.
    # Once the current node's next node is the tail node, # set that current node's, 
    # next node to a node with the value given and that points to the @tail node.
    
    current_node = @head
    while current_node.next_node != @tail
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(value, @tail)
  end
  
  def prepend value
    
  end

end



linkedlist = LinkedList.new
puts linkedlist
linkedlist.append("fish")
# p linkedlist
linkedlist.append(999)
p linkedlist