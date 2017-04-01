require 'benchmark'

require_relative 'node'
require_relative 'linked_list'


n = 10000
llist = LinkedList.new
array = []
llist_array =[]



Benchmark.bm(35) do |array_add|
  array_add.report("test adding to an array") do
    (1..n).each do |i|
      array[i] = i
    end
  end
end

(1..n).each do |i|
  llist_array[i] = Node.new(i)
end

Benchmark.bm(35) do |linked_list_add|
  linked_list_add.report("test adding nodes to Linked list") do
    (1..n).each do |i|
      llist.add_to_tail(llist_array[i])
    end
  end
end

# linked list with new node in the loop
Benchmark.bm(35) do |linked_list_add_2|
  linked_list_add_2.report("test adding nodes to Linked list #2") do
    (1..n).each do |i|
      node = Node.new(i)
      llist.add_to_tail(node)
    end
  end
end


Benchmark.bm(35) do |find_array_element|
find_array_element.report("find middle element of array") do
      middle = array[5000]
  end
end


Benchmark.bm(35) do |find_linked_list_element|
  find_linked_list_element.report("find middle element of L-list") do
      llist.find(5000)
  end
end


Benchmark.bm(35) do |remove_array_element|
remove_array_element.report("removes middle element of array") do
      middle = array.slice!(5000)
  end
end

Benchmark.bm(35) do |remove_linked_list_element|
  remove_linked_list_element.report("removes middle element of L-list") do
      llist.delete(llist.find(5000))
  end
end
