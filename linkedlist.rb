require_relative 'node'
class LinkedList < Node
  def initialize
    tail = Node.new
  end
  
  def append(value)
    node_to_append = Node.new(value)
    #add node_to_append to LinkedList
  end

end

list = LinkedList.new
puts list