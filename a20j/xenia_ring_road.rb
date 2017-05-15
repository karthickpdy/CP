n,m = gets.split(" ").map(&:to_i)
tasks = gets.split(" ").map(&:to_i)
cost = 0
current = 1
tasks.each do |a|
	if a > current
		cost += a - current
		
		current = a
	elsif a < current
		cost += (n - current) + a
		current = a
	end
end
puts cost