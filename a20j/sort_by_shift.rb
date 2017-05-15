n = gets.to_i
arr = gets.split(" ").map(&:to_i)
prev = arr[0]
ind = nil

(1..(n-1)).each do |i|	
	if prev > arr[i]
		ind = i
		break
	end
	prev = arr[i]
end
ans = -1

if ind
	# puts ind
	ans = n - ind if arr[0..(ind-1)] == arr[0..(ind-1)].sort && arr[ind..(n-1)] == arr[ind..(n-1)].sort && arr[-1] <= arr[0]
else
	ans = 0
end

puts ans

#Good - Nicely thought out solution