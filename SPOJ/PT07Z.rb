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
		self.vertices = {}
	end

	def add_vertex(name)
		if self.vertices[name]
			self.vertices[name]
		else
			self.vertices[name] = Vertex.new(name)
		end
	end

	def add_edge(v1,v2)
		v1.adjacents << v2
		v2.adjacents << v1		
	end

end



def dfs(g,v,level)
	@visited[v] = true

	if level > @max
		@max = level
		@farthest = v
	end

	v.adjacents.each do |v1|
		if !@visited[v1]
			dfs(g,v1,level+1)
		end
	end
end


n = gets.to_i
g = Graph.new

(n-1).times do 
	a,b = gets.split(" ").map(&:to_i)	
	v1,v2 = g.add_vertex(a),g.add_vertex(b)
	g.add_edge(v1,v2)
end

@visited = {}
@max = 0
@farthest = nil

dfs(g,g.vertices.values[0],0)

@visited = {}
@max = 0
dfs(g,@farthest,0)
puts @max

