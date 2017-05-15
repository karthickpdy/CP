n = gets.to_i
arr = []
n.times do
	arr << gets.chomp
end
ans = []
arr.each_with_index do |a,i|
	c = 0
	(0...i).each do |j|
		if arr[i] > arr[j]
			c += 1
		end
	end	
	ans << c
end
puts ans.join("\n")