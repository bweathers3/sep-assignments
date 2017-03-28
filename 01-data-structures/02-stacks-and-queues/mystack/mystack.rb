class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    self.top = nil
  end

  def push(item)
    @stack.insert(0, item)
    self.top = @stack[0]
  end

  def pop
    self.top = @stack[1]
    @stack.shift
  end

  def empty?
    #@stack.length == 0  ## Richard's suggestion below
    @stack.length <= 0
  end
end
