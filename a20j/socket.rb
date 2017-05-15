n,devices,socket = gets.split(" ").map(&:to_i)
filters = gets.split(" ").map(&:to_i)

filters.sort!
filter_count = 0
ans = false

while true
	if devices <= socket
		devices = 0
		ans = true
		break
	end
	first = filters.pop
	if first >= devices
		devices = 0
		filter_count += 1
		socket -= 1
		ans = true
		break
	else
		filter_count += 1
		socket -= 1
		socket += first		
	end
	if filters.empty? or socket == 0
		ans = true if devices <= socket
		break 
	end
end

puts ans ? filter_count : "-1"