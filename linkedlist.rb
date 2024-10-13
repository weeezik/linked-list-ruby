class LinkedList
  # linkedlist object represents the full list
  def append value
    # add a node to the end of a linkedlist object
    # makes a node with a value of value, and a next_node of nil
    Node.new(value, nil)
  end
end