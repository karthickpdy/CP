# t = gets.to_i
# gets
# t.times do 
# 	n = gets.to_i
# 	arr = []
# 	n.times do
# 		arr << gets.to_i		
# 	end
# 	gets
# 	# puts "#{arr}"
# 	count = 0
# 	n.times do |i|
# 		j = i - 1
# 		x = arr[i]
# 		while j >= 0 && arr[j] > x
# 			arr[j+1] = arr[j]
# 			j -= 1
# 		end
# 		if i != j
# 			j += 1
# 			arr[j] = x
# 			count += i - j
# 		end
# 	end
# 	# puts "#{arr}"
# 	puts count
# end
def merge(arr,l,m,r)
	c = []
	old_l = l
	old_r = r
	r = m + 1
	inv_count = 0
	while (l <= m) && (r <= old_r)
		if arr[l] <= arr[r]
			c << arr[l]
			l += 1
		else
			c << arr[r]
			inv_count += (m - l) + 1
			r += 1	
		end		
	end

	while l <= m
		c << arr[l]
		l += 1
	end

	while r <= old_r
		c << arr[r]
		r += 1
	end
	i = 0

	while i < c.length
		arr[old_l] = c[i]
		old_l += 1 
		i += 1
	end

	return inv_count
end

def merge_sort(arr,l,r)
	inv_count = 0
	if l < r
		m = l + (r - l ) / 2
		inv_count += merge_sort(arr,l,m)
		inv_count += merge_sort(arr,m+1,r)
		inv_count += merge(arr,l,m,r)
	end
	return inv_count
end

t = gets.to_i
gets
t.times do 
	n = gets.to_i
	arr = []
	n.times do
		arr << gets.to_i		
	end
	gets
	# puts "#{arr}"
	puts merge_sort(arr,0,arr.length-1)
	# puts "#{arr}"
	# puts count
end