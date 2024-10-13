class Node
  def initialize value, next_node
    @value = value
    @next_node = next_node
  end
  attr_accessor :value
  attr_accessor :next_node
end