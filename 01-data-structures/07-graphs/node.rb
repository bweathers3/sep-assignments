class Node

  attr_accessor :next
  attr_accessor :title
  attr_accessor :cast

  def initialize(title, cast)
    @title = title
    @cast = cast
  end
end
