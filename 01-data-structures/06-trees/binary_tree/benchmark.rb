require 'benchmark'

require_relative 'binary_search_tree'

n = 10000
tree_array = []

(1..n).each do |i|
  tree_array[i] = Node.new(i,i)
  #p tree_array[i]
end

node_0 = Node.new(0,0)
base = BinarySearchTree.new(node_0)

Benchmark.bm(38) do |test_binary_search_tree|
  test_binary_search_tree.report("test adding values to binary search tree") do
    (1..n).each.each do |item|
      base.insert(node_0, tree_array[item])
    end
  end
end

Benchmark.bm(38) do |find_binary_search_tree|
find_binary_search_tree.report("find middle element of Bin Search tree  ") do
      middle = base.find(node_0, 5000)
  end
end

Benchmark.bm(38) do |delete_binary_search_tree|
delete_binary_search_tree.report("delete middle +1 element of Bin S. tree ") do
      base.delete(node_0, 5001)
  end
end
