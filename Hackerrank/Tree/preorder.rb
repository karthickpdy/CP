class Node
	attr_accessor :left,:right,:val
	def initialize(val)
		self.val = val
		self.left = nil
		self.right = nil
	end
end

class Tree
	attr_accessor :root
	def initialize(node)
		self.root = node
	end

	def preorder(root=self.root)
		return unless root
		puts root.val
		preorder(root.left)
		preorder(root.right)
	end

	def postorder(root=self.root)
		return unless root
		postorder(root.left)
		postorder(root.right)
		puts root.val
	end

	def height(root=self.root)
		return 0 unless root
		return [height(root.left),height(root.right)].max + 1
	end
end

n = Node.new(1)
tree = Tree.new(n)
n.left = Node.new(2)
n.right = Node.new(3)
puts tree.height