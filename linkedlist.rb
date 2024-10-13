class LinkedList
  # linkedlist object represents the full list
  def append value
    # makes a node with a value of value, and a next_node of nil
    Node.new(value, nil)
    # add a node to the end of a linkedlist object
    
  end
end

# I create a new node with the specified value in the append method. I want to add 
# that newly created node to a linkedlist object. For example: 
# somelinkedlist.append("dog") would:
# 1. created a new node: 
# Node.new("dog", nil) => #<Node:0x000000010082b760 @value="dog", @next_node=nil>
# 2. Add that node to the somelinkedlist object
#  ???? confused here
linklist = LinkedList.new
p linklist