require_relative 'node'

class LinkedList
  def initialize
    @tail = Node.new("tail", nil)
    @head = Node.new("head", @tail)
  end

  def append value #Add node with given value to the end of the list
    current_node = @head
    # binding.irb
    while current_node.next_node != @tail
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(value, @tail)
  end

  def prepend value
    second_node = @head.next_node
    @head.next_node = Node.new(value, second_node)
  end

  def size
    each_node = []
    each_node << @head
    until each_node[-1] == @tail
      each_node << each_node[-1].next_node
    end
    puts each_node.size
  end

  def head
    
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
the_list.append('dog')
the_list.prepend('cat')
the_list.prepend('meow')
the_list.prepend('red')
the_list.append('cow')
puts the_list
the_list.size

