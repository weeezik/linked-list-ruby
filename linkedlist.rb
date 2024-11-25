require_relative 'node'

class LinkedList
  def initialize
    @tail = Node.new("tail", nil)
    @head = Node.new("head", @tail)
  end

  def append value
  end

  def to_s
    puts "[#{@head.value}]->[#{@head.next_node.value}]->[#{@tail.value}]"
  end

end

the_list = LinkedList.new

puts the_list