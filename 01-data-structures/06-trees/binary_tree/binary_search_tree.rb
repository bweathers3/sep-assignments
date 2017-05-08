require_relative 'node'

class BinarySearchTree

  def initialize(root)
    @root = root
    @parent_left = nil
    @parent_right = nil
  end

  def insert(root, node)
    if node.rating < root.rating
      if root.left == nil
        root.left = node
      else
        insert(root.left, node)
      end
    else
      if root.right == nil
        root.right = node
      else
        insert(root.right, node)
      end
    end
  end

  # Recursive Depth First Search
  def find(root, data)
    @parent_left, @parent_right = nil, nil
    if root == nil || data == nil
      nil
    else
      if root.title == data
        root
      elsif root.left != nil
        @parent_left = root
        find(root.left, data)
      elsif root.right != nil
        @parent_right = root
        find(root.right, data)
      end
    end
  end

  def delete(root, data)
      if root == nil || data == nil
        return nil
      else
        item_to_delete = find(root, data)
        if @parent_left == item_to_delete
          @parent_left.left = item_to_delete.left
          item_to_delete = nil
          #item_to_delete.title, item_to_delete.rating = nil, nil
        end
        if @parent_right == item_to_delete
          @parent_right.right = item_to_delete.right
          item_to_delete = nil
          #item_to_delete.title, item_to_delete.rating = nil, nil
        end
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
  licence = Node.new("licence To Kill", 77)

  binaryTree = BinarySearchTree.new(supremacy)

  binaryTree.insert(supremacy, legacy)
  binaryTree.insert(supremacy, identity)
  binaryTree.insert(supremacy, ultimatum)
  binaryTree.insert(supremacy, jason)
  binaryTree.insert(supremacy, spectre)
  binaryTree.insert(supremacy, skyfall)
  binaryTree.insert(supremacy, solace)
  binaryTree.insert(supremacy, royale)
  binaryTree.insert(supremacy, day)
  binaryTree.insert(supremacy, enough)
  binaryTree.insert(supremacy, tomorrow)
  binaryTree.insert(supremacy, goldeneye)
  binaryTree.insert(supremacy, licence)

  binaryTree.printf

  binaryTree.delete(supremacy, "Quantum of Solace")

  binaryTree.delete(supremacy, "GoldenEye")

  binaryTree.printf
=end
