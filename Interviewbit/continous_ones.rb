def continous(arr,m)
	i = j = 0
	zero = 0
	l = r = 0
	max = 0
	while j < arr.length
		if(zero<=m)
			zero += 1 if arr[j] == 0
			j += 1
		else
			zero -= 1 if arr[i] == 0
			i += 1
		end
		if(zero<=m && j - i > max )
			max = j - i
			l = i
			r = j
		end
	end
	(l...r).to_a
end

arr = [1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1]
arr = [0,0,0,1]
m = 4
puts "#{continous(arr,m)}"