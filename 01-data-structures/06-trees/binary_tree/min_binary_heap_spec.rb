include RSpec

require_relative 'min_binary_heap'

RSpec.describe BinarySearchTree, type: Class do
  let (:root) { Node.new("The Bourne Supremacy", 81) }

  let (:tree) { BinarySearchTree.new(root) }
  let (:legacy) { Node.new("The Bourne Legacy", 56) }
  let (:identity) { Node.new("The Bourne Identity", 83) }
  let (:ultimatum) { Node.new("The Bourne Ultimatum", 93) }
  let (:jason) { Node.new("Jason Bourne", 57) }
  let (:spectre) { Node.new("Spectre", 64) }
  let (:skyfall) { Node.new("Skyfall", 92) }
  let (:solace) { Node.new("Quantum of Solace", 65) }
  let (:royale) { Node.new("Casino Royale", 95)) }
  let (:day) { Node.new("Die Another Day", 58) }
  let (:enough) { Node.new("The World is Not Enough", 51) }
  let (:tomorrow) { Node.new("Tomorrow Never Dies", 61) }
  let (:goldeneye) { Node.new("GoldenEye", 78) }
  let (:licence) { Node.new("Licence To Kill", 77) }

  describe "#insert(data)" do
    it "properly inserts a new node as a left child" do
      tree.insert(root, legacy)
      expect(root.left.title).to eq "The Bourne Supremacy"
    end

    it "properly inserts a new node as a right child" do
      tree.insert(root, identity)
      expect(root.right.title).to eq "The Bourne Identity"
    end


  end

end




=begin
supremacy = Node.new("The Bourne Supremacy", 81)
legacy = Node.new("The Bourne Legacy", 56)
identity = Node.new("The Bourne Identity", 83)
ultimatum = Node.new("The Bourne Ultimatum", 93)
jason = Node.new("Jason Bourne", 57)
spectre = Node.new("Spectre", 64)
skyfall = Node.new("Skyfall", 92)
solace = Node.new("Quantum of Solace", 65)
royale = Node.new("Casino Royale", 95)
day = Node.new("Die Another Day", 58)
enough = Node.new("The World is Not Enough", 51)
tomorrow = Node.new("Tomorrow Never Dies", 61)
goldeneye = Node.new("GoldenEye", 78)
licence = Node.new("Licence To Kill", 77)
binaryTree = BinarySearchTree.new(supremacy)
=end
