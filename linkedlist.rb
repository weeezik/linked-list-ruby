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
    added_node = Node.new(value, @tail)

    @head.next_node = added_node
    
  end
  
  def prepend value
  end

  def to_s
    puts "[#{@head.value}]->[#{@head.next_node.value}]->[#{@tail.value}]"
  end

end



linkedlist = LinkedList.new

linkedlist.append("daniel")

puts linkedlist