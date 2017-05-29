def can_be_alloted?(arr,v,m)
	curr = 0
	stu = 1
	n = arr.length 
	(0...arr.length).each do |i|
		return false if arr[i] > v
		if curr + arr[i] <= v #&& (curr == 0 || (m - stu) >= (n-i - 1) )
			curr += arr[i]
		else
			curr = arr[i]
			stu += 1
			return false if stu > m
		end
	end	
	stu <= m
end

def allocate_book(arr,students)
	# arr.sort!
	sum = arr.inject(0,:+)
	l = 1
	r = sum
	while l <= r
		m = l + (r-l)/2
		if(can_be_alloted?(arr,m,students))
			ans = m
			r = m - 1
		else
			l = m + 1
		end		
	end
	return ans
end

puts allocate_book( [ 73, 58, 30, 72, 44, 78, 23, 9 ],5)