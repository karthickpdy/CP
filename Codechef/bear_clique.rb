# require 'Set'

# class Vertex 
# 	attr_accessor :list,:name
# 	def initialize(name)
# 		self.name = name
# 		self.list = Hash.new(0)
# 	end

# 	def add_element(name,distance)
# 		self.list[name] = distance
# 	end

# 	def remove_element(name)
# 		self.list.remove(name)
# 	end
# end

# class Graph
# 	attr_accessor :vertices
# 	def initialize
# 		self.vertices = {}
# 	end

# 	def add(name)
# 		self.vertices[name] ||= Vertex.new(name)
# 	end

# 	def get(name)
# 		self.vertices[name]
# 	end
# end

# def add(g,a,b,c)
# 	g.add(a)
# 	g.add(b)
# 	node1 = g.get(a)
# 	node2 = g.get(b)
# 	node1.add_element(b,c)
# 	node2.add_element(a,c)
# end
class Edge
  attr_accessor :src, :dst, :length
  
  def initialize(src, dst, length = 1)
    @src = src
    @dst = dst
    @length = length
  end
end

class Graph < Array
  attr_reader :edges
  
  def initialize
    @edges = []
  end
  
  def connect(src, dst, length = 1)
    unless self.include?(src)
      raise ArgumentException, "No such vertex: #{src}"
    end
    unless self.include?(dst)
      raise ArgumentException, "No such vertex: #{dst}"
    end
    @edges.push Edge.new(src, dst, length)
  end
  
  def connect_mutually(vertex1, vertex2, length = 1)
    self.connect vertex1, vertex2, length
    self.connect vertex2, vertex1, length
  end

  def neighbors(vertex)
    neighbors = []
    @edges.each do |edge|
      neighbors.push edge.dst if edge.src == vertex
    end
    return neighbors.uniq
  end

  def length_between(src, dst)
    @edges.each do |edge|
      return edge.length if edge.src == src and edge.dst == dst
    end
    nil
  end

  def dijkstra(src, dst = nil)
    distances = {}
    previouses = {}
    self.each do |vertex|
      distances[vertex] = nil # Infinity
      previouses[vertex] = nil
    end
    distances[src] = 0
    vertices = self.clone
    until vertices.empty?
      nearest_vertex = vertices.inject do |a, b|
        next b unless distances[a]
        next a unless distances[b]
        next a if distances[a] < distances[b]
        b
      end
      break unless distances[nearest_vertex] # Infinity
      if dst and nearest_vertex == dst
        return distances[dst]
      end
      neighbors = vertices.neighbors(nearest_vertex)
      neighbors.each do |vertex|
        alt = distances[nearest_vertex] + vertices.length_between(nearest_vertex, vertex)
        if distances[vertex].nil? or alt < distances[vertex]
          distances[vertex] = alt
          previouses[vertices] = nearest_vertex
          # decrease-key v in Q # ???
        end
      end
      vertices.delete nearest_vertex
    end
    if dst
      return nil
    else
      return distances
    end
  end
end

t = gets.to_i
t.times do 
	g = Graph.new
	n,k,x,m,s = gets.split(" ").map(&:to_i)
	arr = []
	
	(1..n).each{|x| g.push(x)}

	(1..k).each do |i|
		(1..k).each do |j|
			g.connect_mutually(i,j,x) if i != j			
		end
	end

	m.times do
		a,b,c = gets.split(" ").map(&:to_i)
		g.connect_mutually(a,b,c)
	end
 	puts "#{g.dijkstra(s).values.join(' ')}"
end