require_relative 'node'

class LinkedList
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @head = nil
    @tail = nil
    @prev = nil
  end

  def add_to_tail(node)
    pointer = @head
    if  (@head == nil) && (@tail == nil)
      @head = node
      @head.next = nil
      @tail = @head
      @prev = @tail
    else
      pointer = @tail
      pointer.next = node
      @prev = pointer
      @tail = node
      @tail.next = nil
    end
  end
end
