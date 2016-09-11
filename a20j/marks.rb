n,m = gets.split(" ").map(&:to_i)
max = Array.new(m,0)
arr = []
best = Hash.new(false)
n.times do |s|
	a = gets.split("").map(&:to_i)
	arr << a
	(0..m-1).each do |i|
		if a[i] >= max[i]
			max[i] = a[i] 
		end
	end
end


arr.each_with_index do |a,i|
	(0..m-1).each do |j|
		best[i] = true if a[j] == max[j]
	end
end

puts best.keys.count