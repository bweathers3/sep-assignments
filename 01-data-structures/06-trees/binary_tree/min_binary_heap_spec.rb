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
      min_heap_tree.insert("The Bourne Supremacy", 81)
      min_heap_tree.insert("The Bourne Legacy", 56)
      expect(min_heap_tree.instance_variable_get(:@heap_array)).to eq([["The Bourne Legacy", 56],["The Bourne Supremacy", 81]])
    end
  end

  describe "#insert(data)" do
    it "properly inserts correctly" do
      min_heap_tree.insert("The Bourne Supremacy", 81)
      min_heap_tree.insert("The Bourne Legacy", 56)
      min_heap_tree.insert("The Bourne Identity", 83)
      min_heap_tree.insert("The Bourne Ultimatum", 93)
      min_heap_tree.insert("Jason Bourne", 57)
      min_heap_tree.insert("Spectre", 64)
      min_heap_tree.insert("Skyfall", 92)
      min_heap_tree.insert("Quantum of Solace", 65)
      min_heap_tree.insert("Casino Royale", 95)
      min_heap_tree.insert("Die Another Day", 58)
      min_heap_tree.insert("The World is Not Enough", 51)
      min_heap_tree.insert("Tomorrow Never Dies", 61)
      min_heap_tree.insert("GoldenEye", 78)
      min_heap_tree.insert("Licence To Kill", 77)
      expect(min_heap_tree.instance_variable_get(:@heap_array)).to eq([["The World is Not Enough", 51], ["The Bourne Legacy", 56], ["Tomorrow Never Dies", 61], ["Quantum of Solace", 65], ["Jason Bourne", 57], ["Spectre", 64], ["Licence To Kill", 77], ["The Bourne Ultimatum", 93], ["Casino Royale", 95], ["The Bourne Supremacy", 81], ["Die Another Day", 58], ["The Bourne Identity", 83], ["GoldenEye", 78], ["Skyfall", 92]])
    end
  end


    describe "#find(data)" do
      it "handles nil gracefully" do
        min_heap_tree.insert("The Bourne Supremacy", 81)
        min_heap_tree.insert("The Bourne Legacy", 56)
        min_heap_tree.insert("The Bourne Identity", 83)
        min_heap_tree.insert("The Bourne Ultimatum", 93)
        expect(min_heap_tree.find(nil)).to eq(nil)
      end

      it "properly finds a node" do
        min_heap_tree.insert("The Bourne Supremacy", 81)
        min_heap_tree.insert("The Bourne Legacy", 56)
        min_heap_tree.insert("The Bourne Identity", 83)
        min_heap_tree.insert("The Bourne Ultimatum", 93)
        expect(min_heap_tree.find("The Bourne Identity")).to eq(2)
      end

      it "properly finds a node" do
        min_heap_tree.insert("The Bourne Supremacy", 81)
        min_heap_tree.insert("The Bourne Legacy", 56)
        min_heap_tree.insert("The Bourne Identity", 83)
        min_heap_tree.insert("The Bourne Ultimatum", 93)
        min_heap_tree.insert("Jason Bourne", 57)
        min_heap_tree.insert("Spectre", 64)
        min_heap_tree.insert("Skyfall", 92)
        min_heap_tree.insert("Quantum of Solace", 65)
        min_heap_tree.insert("Casino Royale", 95)
        min_heap_tree.insert("Die Another Day", 58)
        min_heap_tree.insert("The World is Not Enough", 51)
        min_heap_tree.insert("Tomorrow Never Dies", 61)
        min_heap_tree.insert("GoldenEye", 78)
        min_heap_tree.insert("Licence To Kill", 77)
        expect(min_heap_tree.find("Tomorrow Never Dies")).to eq(2)
      end
    end

    describe "#delete(data)" do
      it "handles nil gracefully" do
        min_heap_tree.insert("The Bourne Supremacy", 81)
        min_heap_tree.insert("The Bourne Legacy", 56)
        min_heap_tree.insert("The Bourne Identity", 83)
        min_heap_tree.insert("The Bourne Ultimatum", 93)
        expect(min_heap_tree.delete_it(nil)).to eq nil
      end

      it "properly deletes a node" do
        min_heap_tree.insert("The Bourne Supremacy", 81)
        min_heap_tree.insert("The Bourne Legacy", 56)
        min_heap_tree.insert("The Bourne Identity", 83)
        min_heap_tree.insert("The Bourne Ultimatum", 93)
        min_heap_tree.delete_it("The Bourne Identity")
        expect(min_heap_tree.find("The Bourne Identity")).to eq nil
      end

      it "properly finds a left node" do
        min_heap_tree.insert("The Bourne Supremacy", 81)
        min_heap_tree.insert("The Bourne Legacy", 56)
        min_heap_tree.insert("The Bourne Identity", 83)
        min_heap_tree.insert("The Bourne Ultimatum", 93)
        min_heap_tree.insert("Jason Bourne", 57)
        min_heap_tree.insert("Spectre", 64)
        min_heap_tree.insert("Skyfall", 92)
        min_heap_tree.insert("Quantum of Solace", 65)
        min_heap_tree.insert("Casino Royale", 95)
        min_heap_tree.insert("Die Another Day", 58)
        min_heap_tree.insert("The World is Not Enough", 51)
        min_heap_tree.insert("Tomorrow Never Dies", 61)
        min_heap_tree.insert("GoldenEye", 78)
        min_heap_tree.insert("Licence To Kill", 77)
        min_heap_tree.delete_it("Tomorrow Never Dies")
        expect(min_heap_tree.find("Tomorrow Never Dies")).to eq nil
      end
    end

end
