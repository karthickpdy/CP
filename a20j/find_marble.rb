n,s,t = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)
visited = Array.new(n,false)
ans = -1
i = s - 1
count = 0
if s == t
	ans = 0
else
	while true
		visited[i] = true
		if !visited[arr[i]-1]
			i = arr[i] - 1
			count += 1
		else
			# puts "breaking here #{arr[i]} #{visited}"
			break
		end
		if i == t - 1			
			ans = count
			break 
		end

	end
end
# puts "#{visited} #{i}"
puts ans

