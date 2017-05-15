t = gets.to_i
t.times do 
	n,k = gets.split(" ").map(&:to_i)
	arr = gets.split(" ").map(&:to_i)
	k %= n
	ans = []	
	i = n - k
	n.times do
		ans << arr[i]
		i = (i + 1) % n
	end

	puts ans.join(" ")
end