require 'benchmark'

require_relative 'binary_search_tree'
require_relative 'min_binary_heap'

n = 10000
tree_array = []
heap_tree_array = []

(1..n).each do |i|
  tree_array[i] = Node.new(i,i)
end

(1..n).each do |i|
  heap_tree_array[i] = "This is number #{i}"
end

node_0 = Node.new(0,0)
base = BinarySearchTree.new(node_0)
heap_base = MinBinaryHeap.new()

Benchmark.bm(38) do |test_binary_search_tree|
  test_binary_search_tree.report("test adding values to binary search tree") do
    (1..n).each.each do |item|
      base.insert(node_0, tree_array[item])
    end
  end
end

Benchmark.bm(38) do |min_binary_heap_tree|
  min_binary_heap_tree.report("test adding values to min binary heap   ") do
    (1..n).each.each do |item|
      heap_base.insert(heap_tree_array[item], item)
    end
  end
end

Benchmark.bm(38) do |find_binary_search_tree|
  find_binary_search_tree.report("find middle element of Bin Search tree  ") do
      middle = base.find(node_0, 5000)
  end
end

Benchmark.bm(38) do |min_binary_heap_tree|
  min_binary_heap_tree.report("find middle element min binary heap     ") do
    middle = heap_base.find("This is number #{5000}")
  end
end

Benchmark.bm(38) do |delete_binary_search_tree|
  delete_binary_search_tree.report("delete middle element of Bin S. tree    ") do
    base.delete(node_0, 5001)
  end
end

Benchmark.bm(38) do |min_binary_heap_tree|
  min_binary_heap_tree.report("delete middle element min binary heap   ") do
    middle = heap_base.delete_it("This is number #{5001}")
  end
end
