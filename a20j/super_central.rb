class Point
	attr_accessor :x,:y

	def initialize(_x,_y)
		self.x = _x
		self.y = _y
	end
end



def left?(p)
	@points.any?{|a| a.x < p.x && p.y == a.y}
end

def right?(p)
	@points.any?{|a| a.x > p.x && p.y == a.y}
end

def upper?(p)
	@points.any?{|a| a.x == p.x && p.y < a.y}
end

def lower?(p)
	@points.any?{|a| a.x == p.x && p.y > a.y}
end

n = gets.to_i
@points = []

n.times do
	x,y = gets.split(" ").map(&:to_i)
	@points << Point.new(x,y)
end

count = 0
@points.each do |p|
	count += 1 if left?(p) && right?(p) && upper?(p) && lower?(p)
end
puts count