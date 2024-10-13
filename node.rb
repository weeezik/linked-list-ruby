class Node
  def initialize value, next_node
    @value = value
    @next_node = next_node
  end
end

dognode = Node.new("dog", nil)
p dognode