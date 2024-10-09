# frozen_string_literal: true

require_relative('./node')

# Linked List class
class LinkedList
  attr_accessor :head

  def initialize(head = nil)
    self.head = head
  end

  def append(value)
    current = head
    return self.head = Node.new(value) if head.nil?

    return unless current.next_node.nil?

    current.next_node = Node.new(value)
  end

  def prepend(value)
    previous = head
    self.head = Node.new(value, previous)
  end

  def size
    current = head
    count = 0
    loop do
      return count if current.nil?

      current = current.next_node
      count += 1
    end
  end

  def tail
    current = head
    loop do
      return current if current.next_node.nil?

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
    at(size - 2).next_node = nil
  end

  def contains?(value)
    current = head
    loop do
      return true if current.value == value
      return false if current.next_node.nil?

      current = current.next_node
    end
  end

  def find(value)
    current = head
    count = 0
    loop do
      return count if current.value == value
      return nil if current.next_node.nil?

      current = current.next_node
      count += 1
    end
  end

  def to_s
    current = head
    final = ''
    loop do
      return final << 'nil' if current.nil?

      final << "( #{current.value} ) -> "

      current = current.next_node
    end
  end

  def insert_at(value, index)
    current = head
    count = 0
    loop do
      return current.next_node = Node.new(value, current.next_node) if count == index - 1

      current = current.next_node
      count += 1
    end
  end

  def remove_at(index)
    current = head
    return self.head = current.next_node if index.zero?

    count = 0
    loop do
      return current.next_node = current.next_node.next_node if count == index - 1

      current = current.next_node
      count += 1
    end
  end
end

list = LinkedList.new
list.append(2)
list.append(4)
list.prepend(1)

puts list

list.remove_at(0)

puts list
