require_relative('./node.rb')

#Linked List class
class LinkedList
  attr_accessor :head

  def initialize(head = nil)
    self.head = head
  end

  def append(value)
    current = head
    return self.head = Node.new(value) if head == nil
    if current.next_node == nil
      current.next_node = Node.new(value)
    end
  end

  def prepend(value)
    previous = head
    self.head = Node.new(value, previous)
  end

  def to_s
    current = head
    final = ''
    loop do
      if current == nil
        return final << 'nil'
      else
        final << "( #{current.value} ) -> "
      end
      current = current.next_node
    end
  end

end

list = LinkedList.new

list.append(6)

puts list

list.append(5)

puts list

list.prepend(1)

puts list
p list