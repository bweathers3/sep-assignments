require_relative 'node'

class MinBinaryHeap

  def initialize(root)
    @root = root
  end


    # Recursive Depth First Search
  def find(root, data)
    #p root, data
    if root == nil || data == nil
      nil
    else
      if root.title == data
        root
      elsif root.left != nil
        find(root.left, data)
      elsif root.right != nil
        find(root.right, data)
      end
    end
  end

  def delete(root, data)
    #p root, data
    if root == nil || data == nil
      return nil
    else
      item_to_delete = find(root, data)
      item_to_delete.title = nil
      item_to_delete.rating = nil
    end
  end

    # Recursive Breadth First Search
  def printf(children=nil)
    print_array = []
    tree_array = []
    print_array.push("#{@root.title}: #{@root.rating}")
      if @root.left != nil
        tree_array.push(@root.left)
      end
      if @root.right != nil
        tree_array.push(@root.right)
      end
      tree_array.each do |item|
        print_array.push("#{item.title}: #{item.rating}")
          if item.left != nil
            tree_array.push(item.left)
          end
          if item.right != nil
            tree_array.push(item.right)
          end
      end
      puts print_array
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
