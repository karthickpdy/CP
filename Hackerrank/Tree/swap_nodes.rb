class Node
	attr_accessor :left,:right,:val
	def initialize(val)
		self.val = val
		self.left = nil
		self.right = nil
	end
end

def inorder(root)
	return unless root
	inorder(root.left)
	@inorder << root.val
	inorder(root.right)
end


def level_order(root,level)
	return unless root	
	@levels[level] ||= [] 
	@levels[level] << root
	level_order(root.left,level+1)
	level_order(root.right,level+1)
end


def swap(a)
	a.left,a.right = a.right,a.left	
end


n = gets.to_i
arr = []
n.times do |i|
	node = Node.new(i+1)
	arr << node
end

n.times do |i|
	a,b = gets.split(" ").map(&:to_i)
	node = arr[i]
	node.left = arr[a - 1] if a != -1
	node.right = arr[ b - 1] if b != -1
end

@levels = {}
level_order(arr[0],1)

t = gets.to_i

size = @levels.keys.length

t.times do
	k = gets.to_i
	i = 1
	while i * k <= size
		@levels[i * k].each do |a|
			swap(a)
		end
		i += 1
	end
	@inorder = []
	inorder(arr[0])
	puts @inorder.join(" ")
end