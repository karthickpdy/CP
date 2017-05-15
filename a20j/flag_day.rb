n,m = gets.split(" ").map(&:to_i)


assignment = {}

m.times do
	arr = gets.split(" ").map(&:to_i)
	colors = [3,2,1]
	intersec = arr.detect{|a| assignment[a]}
	if intersec
		arr = arr - [intersec]
		colors -= [assignment[intersec]]
		# puts "colors #{intersec}"
	end
	arr.each do |a|		
		assignment[a] = colors.pop		
	end
end
ans = []
assignment.keys.sort.each do |k|
	ans << assignment[k]	
end
puts ans.join(" ")