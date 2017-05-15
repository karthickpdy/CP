n,m = gets.split(" ").map(&:to_i)

sections = []

n.times do
	sections << []	
end


time = {}
cost = {}

m.times do |i|
	l,r,t,c = gets.split(" ").map(&:to_i)

	(l..r).each do |j|
		sections[j-1] << i + 1
	end

	time[i+1] = t
	cost[i+1] = c
end

winner = []

# puts "#{sections}"
sections.each do |a|
	
	min_time = time[a[0]]
	min_ind = a[0]

	a.each_with_index do |x,i|
		# puts "x #{x} #{min_time}"
		if time[x] < min_time
			# puts "mitim #{min_time}"
			min_time = time[x]
			min_ind = x
		end
	end

	winner << min_ind
end


# puts "#{time}"
# puts "#{cost}"
# puts "#{winner}"
puts winner.compact.inject(0){|s,a| s += cost[a] }