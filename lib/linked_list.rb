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

  def size
    current = head
    count = 0
    loop do
      if current == nil
        return count
      else
        current = current.next_node
        count += 1
      end
    end
  end

  def tail
    current = head
    loop do
      return current if current.next_node == nil
      current = current.next_node
    end
  end

  def at(index)
    current = head
    count = 0
    loop do
      return current if count == index
      current = current.next_node
      count += 1
    end
  end

  def pop
    self.at(self.size - 2).next_node = nil
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
list.append(5)
list.prepend(1)

puts list

list.pop

puts list
