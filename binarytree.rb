class Node
  attr_accessor :left, :right, :data

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end
end

class BinaryTree
  attr_accessor :root

  def initialize(root)
    @root = Node.new(root)
  end

  def insert(root, data)
    if root == nil
      return Node.new(data)
    else
      if data <= root.data
        cur = self.insert(root.left, data)
        root.left = cur
      else
        cur = self.insert(root.right, data)
        root.right = cur
      end
    end
    return root
  end

  def inorder(root)
    return if root == nil
    inorder(root.left)
    puts root.data
    inorder(root.right)
  end
end

tree = BinaryTree.new(50)
[1, 10, 100, 25, 75].each do |i|
  tree.insert(tree.root, i)
end
tree.inorder(tree.root)
