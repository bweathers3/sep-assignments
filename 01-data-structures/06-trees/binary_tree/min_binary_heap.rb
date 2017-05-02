require_relative 'node'

class MinBinaryHeap

  def initialize(root)
    @root = root
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

  min_heap_tree = BinarySearchTree.new(supremacy)


  min_heap_tree.insert(supremacy, legacy)
  min_heap_tree.insert(supremacy, identity)
  min_heap_tree.insert(supremacy, ultimatum)
  min_heap_tree.insert(supremacy, jason)
  min_heap_tree.insert(supremacy, spectre)
  min_heap_tree.insert(supremacy, skyfall)
  min_heap_tree.insert(supremacy, solace)
  min_heap_tree.insert(supremacy, royale)
  min_heap_tree.insert(supremacy, day)
  min_heap_tree.insert(supremacy, enough)
  min_heap_tree.insert(supremacy, tomorrow)
  min_heap_tree.insert(supremacy, goldeneye)
  min_heap_tree.insert(supremacy, licence)

  min_heap_tree.printf

=end
