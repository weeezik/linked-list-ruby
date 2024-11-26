require_relative 'linkedlist'

# TOP-suggested tests
list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')
puts list

# My Tests
the_list = LinkedList.new

the_list.append('dog')
the_list.prepend('cat')
the_list.prepend('meow')
the_list.prepend('red')
the_list.append('cow')
puts the_list

the_list.size
the_list.head
the_list.tail
the_list.at(1)
the_list.pop
puts the_list
puts the_list.contains? "cat"
p the_list.find("meow")