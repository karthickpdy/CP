n,pos = gets.split(" ").map(&:to_i)
arr = gets.chomp
mid = (n+1) / 2
unless pos <= mid
	pos = n - pos + 1
	arr.reverse!
end
c = 0
last_ind = pos - 1
((pos - 1)...mid).each do |i|
	if arr[i] != arr[n - i - 1]
		a = arr[i].ord 
		b = arr[n - i - 1].ord
		val = []
		if a < b
			val << b - a 
			val << a - b + 26
		else
			val << a - b
			val << b - a + 26
		end
		c += val.min
		last_ind = i
	end
end

first_ind = nil
(0...(pos-1)).each do |i|
	if arr[i] != arr[n - i - 1]
		a = arr[i].ord 
		b = arr[n - i - 1].ord
		val = []
		if a < b
			val << b - a 
			val << a - b + 26
		else
			val << a - b
			val << b - a + 26
		end
		c += val.min
		first_ind = i unless first_ind
	end
end
# puts "#{first_ind} #{pos-1} #{last_ind} #{c}"
unless first_ind
	c += last_ind - (pos - 1)
else
	first_dist = pos - 1 - first_ind
	last_dist = last_ind - (pos - 1)
	c += first_dist + last_dist
	c += [first_dist,last_dist].min
end

puts c