require_relative 'node'

class LinkedList
  def initialize
    @tail = Node.new("nil", nil)
    @head = Node.new("head", @tail)
  end

  def append value
    current_node = @head
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
    puts "#{each_node.size - 2}"
  end

  def head
    each_node = []
    each_node << @head.next_node
    until each_node[-1] == @tail
      each_node << each_node[-1].next_node
    end
    puts each_node[0].value
  end

  def tail
    each_node = []
    each_node << @head.next_node
    until each_node[-1] == @tail
      each_node << each_node[-1].next_node
    end
    puts each_node[-2].value
  end

  def at index
    each_node = []
    each_node << @head.next_node
    until each_node[-1] == @tail
      each_node << each_node[-1].next_node
    end
    puts each_node[index].value
  end

  def pop
    old_last_node = @head
    until old_last_node.next_node == @tail
      old_last_node = old_last_node.next_node
    end
    old_last_node.next_node = nil # Point last node away from tail

    new_last_node = @head
    until new_last_node.next_node.value == old_last_node.value
      new_last_node = new_last_node.next_node
    end
    new_last_node.next_node = @tail # Point second to last node to tail, making it the new last node
  end

  def contains? value
    each_node = []
    each_node << @head.next_node
    until each_node[-1] == @tail
      each_node << each_node[-1].next_node
    end

    outcome = nil
    each_node.each do |node|
      if node.value == value
        outcome = true
        break
      else
        outcome = false
        next
      end
    end

    outcome
  end

  def find value
    each_node = []
    each_node << @head.next_node
    until each_node[-1] == @tail
      each_node << each_node[-1].next_node
    end

    index = nil
    each_node.each_with_index do |node, idx|
      if node.value == value
        index = idx
        break
      else
        next
      end
    end

    index
  end



  def to_s
    each_node = []
    each_node << @head.next_node
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