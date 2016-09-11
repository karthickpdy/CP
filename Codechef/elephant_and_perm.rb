t = gets.to_i
t.times do 
	n = gets.to_i
	arr = gets.split(" ").map(&:to_i)
	i = 0
	inv = local_inv = 0
	while i < arr.length - 1
		j = i + 1
		local_inv += 1  if arr[i] > arr[i + 1]
		while j < arr.length
			inv += 1 if arr[i] > arr[j]
			j += 1
		end
		i += 1
	end
	puts inv == local_inv ? "YES" : "NO"
end