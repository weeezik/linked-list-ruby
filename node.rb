class Node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = value
  end
  attr_accessor :value, :next_node
end