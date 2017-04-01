require_relative 'node'
require 'benchmark'

class LinkedList
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @head = nil
    @tail = nil
  end

  # This method creates a new `Node` using `data`, and inserts it at the end of the list.
  def add_to_tail(node)
    pointer = @head
    if  (@head == nil) && (@tail == nil)
      @head = node
      @head.next = nil
      @tail = @head
    else
      loop do
      break if pointer.next == nil
        pointer = pointer.next
      end
      pointer.next = node
      @tail = node
      @tail.next = nil
    end
  end

  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
    pointer = @head
    if @tail == nil
      return nil
    elsif @head == @tail
      @head = nil
      @tail = nil
    else
      while (pointer.next != nil) && (pointer.next != @tail)
        pointer = pointer.next
      end
      @tail = pointer
      @tail.next = nil
    end
  end

  # This method prints out a representation of the list.
  def print
    pointer = @head
    puts pointer.data
    loop do
      break if pointer.next == nil
      pointer = pointer.next
      puts pointer.data
    end
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
    if @head == node
      remove_front
    elsif @tail == node
      remove_tail
    else
      pointer = @head
      loop do
      break if pointer.next == node
        pointer = pointer.next
      end
      pointer.next = node.next
    end
  end

  # This method adds `node` to the front of the list and must set the list's head to `node`.
  def add_to_front(node)
    if  (@head == nil) && (@tail == nil)
      @head = node
      @head.next = nil
      @tail = @head
    else
      hold_old_head = @head
      @head = node
      @head.next = hold_old_head
    end
  end

  # This method removes and returns the first node in the Linked List and must set Linked List's head to the second node.
  def remove_front
    if (@tail == @head)
      @head = nil
    else
      @head = @head.next
    end
  end

  def find(x)
    pointer = @head
    i = 1
    loop do
      break if i== x
      pointer = pointer.next
      i = i + 1
    end
    return pointer
  end

end
