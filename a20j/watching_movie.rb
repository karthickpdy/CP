n,x = gets.split(" ").map(&:to_i)
minutes_watched = 0
current = 1
n.times do
	l,r = gets.split(" ").map(&:to_i)
	while current + x <= l
		current += x
	end
	minutes_watched += l - current
	current = r + 1
	minutes_watched += r + 1 - l
	# puts "current #{current} minutes_watched #{minutes_watched}"
end

puts minutes_watched