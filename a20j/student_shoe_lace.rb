require 'Set'

class Vertex 
	attr_accessor :list,:name
	def initialize(name)
		self.name = name
		self.list = Set.new
	end

	def add_element(v)
		self.list << v
	end

	def remove_element(v)
		self.list.delete(v)
	end
end

class Graph
	attr_accessor :vertices
	def initialize
		self.vertices = Set.new
	end

	def add(v)
		self.vertices << v
	end

	def get(name)
		self.vertices.detect{|v| v.name == name}
	end
end


n,m = gets.split(" ").map(&:to_i)

g = Graph.new
n.times do |i|
	g.add(Vertex.new(i+1))
end

m.times do
	a,b = gets.split(" ").map(&:to_i)
	x,y = g.get(a),g.get(b)
	x.add_element(y)
	y.add_element(x)
end
count = 0
while true
	removed = false
	dont_check = Hash.new(false)

	g.vertices.each do |a|		
		next if dont_check[a.name]
		if a.list.count == 1
			el = a.list.first
			a.remove_element(el)
			el.remove_element(a)
			dont_check[el.name] = true
			removed = true
		end
	end
	if removed
		count += 1 
	else
		break
	end
end

puts count