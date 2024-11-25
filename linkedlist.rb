require_relative 'node'

class LinkedList
  def initialize
    @tail = Node.new("tail", nil)
    @head = Node.new("head", @tail)
  end

  def append value #add node with given value to the end of the list
    current_node = @head
    if current_node.next_node != @tail
      current_node = current_node.next_node
    else
      current_node.next_node = Node.new(value, @tail)
    end
  end

  def to_s
    each_node = []
    each_node << @head
    until each_node[-1] == @tail
      each_node << each_node[-1].next_node
    end

    each_nodes_value = []
    each_node.each do |node|
      each_nodes_value << node.value
    end
    each_nodes_value.join(" -> ")
  end

end

the_list = LinkedList.new
puts the_list
the_list.append('dog')
puts the_list
