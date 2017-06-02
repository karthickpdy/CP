def can_be_alloted?(arr,v,m)
	curr = 0
	painter = 1
	(0...arr.length).each do |i|
		return false if arr[i] > v
		if curr + arr[i] <= v
			curr += arr[i]
		else
			curr = arr[i]
			stu += 1
			return false if stu > m
		end
	end	
	true
end

def painter(arr,k,time_to_paint_each)
#Minimize the maximum sum of length of boards
    
    
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
