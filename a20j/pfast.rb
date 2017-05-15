def ones(a)
	c = 0
	while a > 0
		c += a % 2
		a /= 2		
	end
	c
end

n,m  = gets.split(" ").map(&:to_i)
arr = []
n.times do
	arr << gets.chomp
end
enemy = []

m.times do
	a,b = gets.chomp.split(" ")
	val = 0
	val |= 1 << arr.index(a)
	val |= 1 << arr.index(b)
	enemy << val
end

# puts "here #{arr}"
best = 0

(0..(2**n)).each do |i|
	ans = true
	enemy.each do |en|
		if (en & i) == en
			ans = false
			# puts "ere"
		end
		# puts "fdf"
	end
	# puts "ere"
	if ans && (ones(i) > ones(best))
		best = i		
	end	
	# puts "dsafds"
end
# puts "dasf"
puts ones(best)
list  = []
# puts "#{arr}"
# puts "#{best.to_s(2).rjust(n,'0')}"
best.to_s(2).rjust(n,'0').each_char.with_index do |c,i|
	if c == '1'
		list << arr[n-i - 1]
	end
end
puts list.sort.join("\n")