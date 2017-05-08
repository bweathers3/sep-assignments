include RSpec

require_relative 'min_binary_heap'

RSpec.describe MinBinaryHeap, type: Class do
  let(:min_heap_tree) { MinBinaryHeap.new }

  describe "#insert(data)" do
    it "properly inserts a top" do
      min_heap_tree.insert("The Bourne Supremacy", 81)
      expect(min_heap_tree.instance_variable_get(:@heap_array)).to eq([["The Bourne Supremacy", 81]])
    end
  end

  describe "#insert(data)" do
    it "properly inserts correctly" do
      min_heap_tree.insert("The Bourne Legacy", 56)
      expect(min_heap_tree.instance_variable_get(:@heap_array)).to eq([["The Bourne Legacy", 56],["The Bourne Supremacy", 81]])
    end
  end
=begin
  describe "#insert(data)" do
    it "properly inserts correctly" do
      min_heap_tree.insert(min_heap_tree.insert("The Bourne Identity", 83))
      #expect(min_heap_tree.instance_variable_get(:@heap_array)).to eq([["The Bourne Legacy", 56],["The Bourne Supremacy", 81],["The Bourne Identity", 83]])
    end

  end

=end

end
