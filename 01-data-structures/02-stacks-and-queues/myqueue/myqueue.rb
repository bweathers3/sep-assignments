class MyQueue
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @queue = Array.new
    @head = @queue[0]
  end

  def enqueue(element)
    @queue.insert(0, element)
    @head = @queue.first
    @tail = @queue.last
  end

  def dequeue
    @queue.delete_at(@queue.length - 1)
    @head = @queue.first
    @tail = @queue.last
  end

  def empty?
    #@queue.length == 0
    @queue.length <= 0
  end
end
