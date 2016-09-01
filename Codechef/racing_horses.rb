t = gets.to_i
t.times do 
	n = gets.to_i
	arr = gets.split(" ").map(&:to_i)
	arr.sort!
	prev = arr[0]
	min_diff = arr[-1]
	arr[1..-1].map do |a|
		diff = a - prev
		min_diff = diff if diff < min_diff
		prev = a
	end
	puts min_diff
end
