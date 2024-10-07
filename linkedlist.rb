require_relative 'node'

class LinkedList < Node
  def initialize
    @full_list = []
  end
  attr_accessor :full_list

  def append(value)
    @node_to_append = Node.new(value, nil)
    @full_list.append(@node_to_append) 
  end

  def prepend(value)
    @node_to_prepend = Node.new(value, @full_list[0])
    @full_list.prepend(@node_to_prepend)
  end

  def size
    @full_list.length
  end

  def head
    @full_list[0]
  end

  def tail
    @full_list[-1]
  end

  def at(index)
    @full_list[index]
  end

  def pop
    @full_list.pop
  end

  def contains?(value)
    if @full_list.contains?(value)
      true
    else
      false
    end
  end

  def find(value)
    @full_list.find_index(value)
  end

  def to_s
    @full_list.to_s
    # For each node object extract the value 
    # then format it like so:
    # ( value ) -> ( value ) -> ( value ) -> nil
  end

end

list = LinkedList.new
puts list
list.append('cat')
list.prepend('dog')
list.append('greek')
puts list.size
puts list