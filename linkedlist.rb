require_relative 'node'

class LinkedList
# initialize a head and a tail node
  def initialize
    @tail = Node.new("tail", nil)
    @head = Node.new("head", @tail.value)
  end
  def append value
    Node.new(value, nil)
  end
end

linkedlist = LinkedList.new
p linkedlist
