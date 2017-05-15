# def get_count(arr,l,r,t)

# 	while l >= 0 && l <= r
# 		m = l + (r-l) / 2
# 		puts "#{l} #{r}"
# 		return 1 if r ==m && arr[m] <= t
# 		if arr[r] - arr[m] > t
# 			l = m + 1
# 		elsif arr[r] - arr[m] < t
# 			if arr[r] - arr[m-1] <= t
# 				l = m - 1
# 			else
# 				puts "less case #{l} #{r} #{m}"
# 				return r - m
# 			end
# 		else
# 			puts "equal case #{l} #{r} #{m}"
# 			return r - m
# 		end
# 	end
# 	return 0
# end


#For each r what is the l such that sum[l..r] <= t and l..r is maximum
# def get_count(arr,l,r,t)
# 	# return r - l if arr[r] - arr[l] <= t	
# 	return r - l + 1 if arr[r] <= t
# 	(l..(r-1)).each do |i|
# 		# puts "#{r} #{i}"
# 		return r - i if arr[r] - arr[i] <= t
# 	end
# 	return 0
# end


# def get_count(arr,l,r,t)
# 	# return r - l if arr[r] - arr[l] <= t	
# 	return r - l + 1 if arr[r] <= t
	
# 	while l >=0 && l < r
# 		if arr[r] - arr[l] > t
# 			m = l + ((r-l)/2.0).ceil
# 			l = m
# 			# puts "#{l} #{m} #{r} #{l + (r-l)/2}"
# 		elsif arr[r] - arr[l] < t
# 			if l !=0 && arr[r] - arr[l-1] < t
# 				l = l - 1
# 			else
# 				return r - l
# 			end
# 		else
# 			return r - l
# 		end
# 	end

# 	return 0
# end

# def get_count(arr,l,r,t)
# 	# return r - l if arr[r] - arr[l] <= t	
# 	# puts "#{l} #{r}"
# 	return r - l + 1 if arr[r] && arr[r] <= t
	
# 	while arr[r] && l < r
# 		m = l + (r-l) / 2
# 		if arr[l] + t > arr[r]
# 			r = m
# 		else
# 			if arr[]
# 			 	r =  r + 1
# 		 	else
# 		 		return r - l
# 		 	end

# 		end
# 	end

# 	return 0
# end

def upper_bound(arr,l,r,x)
	best = nil	
	while l <= r
		m = (l+r)/2
		# puts "#{l} #{r} #{m}"
		if arr[m] <= x
			best = m
			# puts "m #{arr[m]} x #{x}"
			l = m + 1
		else
			r = m - 1
		end
	end
	return best

end
# puts upper_bound([1,2,3,4,5,6],0,5,10)
# puts upper_bound([1,2,3,6,7,8],0,5,4)
# puts upper_bound([1,2,3,4,5,6],0,5,0)
# puts upper_bound([1,2,3,4,5,6],0,5,9)
n,t = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)
sum_arr = [arr[0]]
(1..(n-1)).each do |i|	
	sum_arr[i] = sum_arr[i-1] + arr[i]
end
# puts "#{sum_arr}"
max = 0
unless sum_arr[n-1] <= t
	sum_arr.each_with_index{|a,i| 
		# val = get_count(sum_arr,i,n-1,t)	
		up = upper_bound(sum_arr,i,n-1,sum_arr[i]+t)
	 	if up
			val = up - i
		# puts "#{sum_arr[i]+t}"
			# val = 1 if up == i && arr[i] <= t
		end
		max = val if val && val > max
	}

else
	max = n
end
# 1 2 3 4 5
# 1 3 6 10 15
puts max
# 

# Good - 3 days struggle finally accepted - http://canhazcode.blogspot.in/2012/02/we-need-to-talk-about-binary-search.html