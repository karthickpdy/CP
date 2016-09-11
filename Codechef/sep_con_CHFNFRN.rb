class Vertex
	attr_accessor :name,:adjacents

	def initialize(_name)
		self.adjacents = []
		self.name = _name
	end

	def to_s
		self.name
	end
end

class Graph
	
	attr_accessor :vertices

	def initialize
		self.vertices = []
	end

	def add_vertex(vertex)
		self.vertices << vertex
	end

	def add_edge(v1,v2)
		v1.adjacents << v2
		# v2.adjacents << v1		
	end

end


def dfs_util(v)
	@visited[v] = true
	print "#{v.name} "
	v.adjacents.each { |e| dfs_util(e) unless @visited[e]  }		
end

def fill_order(v)
	@visited_fill_order[v] = true
	v.adjacents.each { |e| fill_order(e) unless @visited_fill_order[e]  }
	@stack << v
end

def dfs
	@visited = Hash.new(false)
	vertices.each do |v|
		dfs_util(v) unless @visited[v]
	end
end




t = gets.to_i
t.times do 
	g = Graph.new
	g1 = Graph.new

	n,m = gets.split(" ").map(&:to_i)
	mapping = {}
	(1..n).each { |e| g.add_vertex(Vertex.new(e))  }
	(1..n).each { |e|
	 vv = Vertex.new(e)
	 mapping[g.vertices[e-1]] = vv
	 g1.add_vertex(vv)  
	}
	
	m.times do 
		edges = gets.split(" ").map(&:to_i)
		g.add_edge(g.vertices[edges[0]-1],g.vertices[edges[1] -1])
		g1.add_edge(g1.vertices[edges[1]-1],g1.vertices[edges[0] -1])
	end

	# @visited = Hash.new(false)
	# g.vertices.each do |v|
	# 	dfs_util(v) unless @visited[v]
	# 	puts
	# end

	# g.vertices.each do |v|
	# 	puts "adj #{v.name} #{v.adjacents}"
	# end

	
	@stack = Array.new
	@visited_fill_order = Hash.new(false)
	g.vertices.each do |v|
		fill_order(v) unless @visited_fill_order[v]
	end
	
	@visited = Hash.new(false)
	puts "Here #{@stack}"
	puts "mapping #{mapping}"
	
	while !@stack.empty?
		v = @stack.pop
		v = mapping[v]
		unless @visited[v]
			dfs_util(v) 
			puts
		end
	end
end