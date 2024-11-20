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
    
  end
  
  def prepend value
  end

  def to_string
  end

end



linkedlist = LinkedList.new

linkedlist.prepend("Michael")
p linkedlist